import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpPage(),
    );
  }
}

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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 26, right: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 28.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "There",
                    style: TextStyle(
                        fontSize: 90,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ".",
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.green,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)))),
            ),
            const SizedBox(
              height: 22,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)))),
              obscureText: true,
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: signUp,
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                ),
                child: const Text(
                  "Sign UP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
