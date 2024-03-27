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

  Future<UserCredential?> _signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

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

    if (users.docs.isNotEmpty) {
      return doLogin(register);
    }

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: register.email,
      password: register.password,
    );

    final doc = await _collection.add(UserModel(
      email: register.email,
      password: register.password,
      username: register.email.split('@').first,
    ).toJson());

    final snapshot = await doc.get();

    final userUpdate = UserModel.fromJson(
      snapshot.data() as Map<String, dynamic>,
    ).copyWith(id: doc.id);

    await doc.update(userUpdate.toJson());

    return true;
  }

  @override
  Future<bool> doLogin(RegisterModel login) async {
    final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: login.email,
      password: login.password,
    );
    final checkUser = user.user;
    if (checkUser == null) return false;
    return true;
  }

  @override
  Future<bool> doLoginWithGoogle() async {
    final user = await _signInWithGoogle();

    if (user == null) return false;

    return true;
  }

  @override
  Future<bool> doLogout() {
    // TODO: implement doLogout
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> getProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;

    final docRef = await _collection
        .where('email', isEqualTo: user.email!.toLowerCase())
        .get();

    final map = docRef.docs.first.data() as Map<String, dynamic>;

    return UserModel.fromJson(map);
  }
}
