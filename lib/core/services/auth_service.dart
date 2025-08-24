// ignore_for_file: dead_code

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<User?> signup(String email, String password) async {
    try {
      final AuthCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log("User Created Successfully");
      return AuthCredential.user!;
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future login(String email, String password) async {
    try {
      final AuthCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      log("User Successfully created");
      return AuthCredential.user!;
    } on FirebaseAuthException catch (e) {
      log(e.message!);
      rethrow;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
