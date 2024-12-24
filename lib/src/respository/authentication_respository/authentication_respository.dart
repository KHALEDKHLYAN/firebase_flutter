// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/src/respository/authentication_respository/exceptions/signin_email_password_failure.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/onboarding/screen/dashboard_screen.dart';
import '../../features/authentication/screens/welcome/welcome_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Firebase Authentication instance
  final FirebaseAuth auth = FirebaseAuth.instance;

  // Reactive User State
  late Rx<User?> firebaseUser;

  @override
  void onInit() {
    super.onInit();
    firebaseUser = Rx<User?>(auth.currentUser);
  }

  @override
  void onReady() {
    super.onReady();
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  void _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => WelcomeScreen()) : Get.off(() => ChessBooksDashboard());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailPasswordFailure.code(e.code);
      print("FIREBASE AUTH EXCEPTION: ${ex.message}");
      throw ex;
    } catch (e) {
      var ex = SignUpEmailPasswordFailure();
      print("EXCEPTION: ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print("FIREBASE AUTH EXCEPTION: ${e.code}");
      throw SignUpEmailPasswordFailure.code(e.code);
    } catch (e) {
      print("Unexpected error: $e");
      throw SignUpEmailPasswordFailure();
    }
  }

  Future<void> logOut() async => await auth.signOut();
}
