
import 'package:flutter/material.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key, required this.emailController, required this.passwordController, required this.onPressed, });
  final TextEditingController emailController ;
    final TextEditingController passwordController ;
    final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
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
                onPressed: onPressed,
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