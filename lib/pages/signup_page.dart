import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

import 'widget/signUp_page_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final FirebaseAuth auth = FirebaseAuth.instance;

    signUp() async {
      try {
        UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        log("User logged in: ${userCredential.user?.email}");
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          text: 'Sign Up Completed Successfully!',
        );
      } on FirebaseAuthException catch (e) {
        log("Login failed: $e");
        String? errMessage;
        if (e.code == 'invalid-email') {
          errMessage = 'The email address is badly formatted.';
        } else if (e.code == 'user-not-found') {
          errMessage = 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          errMessage = 'Wrong Password.';
        } else if (e.code == 'email-already-in-use') {
          errMessage = 'Email Already in use.';
        } else if (e.code == 'wrong-password') {
          errMessage = 'Wrong password provided.';
        }

        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: 'Oops ...',
          text: errMessage ?? 'Something Went Wrong',
        );
      }
    }

    return SignUpPageBody(
      emailController: emailController,
      passwordController: passwordController,
      onPressed: signUp,
    );
  }
}
