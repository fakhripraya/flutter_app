import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  CollectionReference get _collection =>
      FirebaseFirestore.instance.collection('users');

  GoogleSignIn get _googleSignIn => GoogleSignIn();

  Future<UserCredential?> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<bool> doRegister(RegisterModel register) async {
    final users = await _collection
        .where('email', isEqualTo: register.email.toLowerCase())
        .get();

    // check whether the user is an existing or not,
    // if it exists return true, else it will go through some process and return false along the way
    if (users.docs.isNotEmpty) return true;

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: register.email,
        password: register.password,
      );

      return _insertOne(register.toJson());
    } catch (e) {
      print("Error registering user: $e");
      return false; // Return false in case of any error during registration
    }
  }

  @override
  Future<bool> doLogin(RegisterModel login) async {
    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: login.email,
        password: login.password,
      );
      final checkUser = userCredential.user;
      if (checkUser == null) return false;
      return true;
    } catch (e) {
      print("Error login user: $e");
      return false;
    }
  }

  Future<List<UserModel>> _getUserByEmail(String email) async {
    final snapshot = await _collection.where('email', isEqualTo: email).get();
    return snapshot.docs
        .map((e) => UserModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }

  Future<bool> _insertOne(Map<String, dynamic> data) async {
    final docRef = await _collection.add(data);
    final snapshot = await docRef.get();

    final user = UserModel.fromJson(
      snapshot.data() as Map<String, dynamic>,
    ).copyWith(id: docRef.id);

    return docRef
        .update(user.copyWith(username: user.email.split('@').first).toJson())
        .then((_) => true)
        .catchError((_) => false);
  }

  @override
  Future<bool> doLoginWithGoogle() async {
    try {
      final userCredential = await _signInWithGoogle();
      if (userCredential == null) return false;
      final users = await _getUserByEmail('${userCredential.user?.email}');
      if (users.isNotEmpty) return true;
      return _insertOne(UserModel(
        email: '${userCredential.user?.email}',
      ).toJson());
    } catch (e) {
      print("Error login with goole user: $e");
      return false;
    }
  }

  @override
  Future<bool> doLogout() async {
    await FirebaseAuth.instance.signOut();
    await _googleSignIn.signOut();
    return true;
  }

  @override
  Future<UserModel?> getProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    return _getUserByEmail('${user.email}')
        .then((values) => values.firstOrNull)
        .catchError((_) => null);
  }
}
