import 'package:app_core/src/domain/auth/register_model.dart';
import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/infrastructure/auth/auth_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  CollectionReference get _collection =>
      FirebaseFirestore.instance.collection('users');

  Future<UserCredential> _signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<bool> doRegister(RegisterModel register) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogin(RegisterModel login) {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLoginWithGoogle() {
    // TODO: implement doLogin
    throw UnimplementedError();
  }

  @override
  Future<bool> doLogout() {
    // TODO: implement doLogout
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
}
