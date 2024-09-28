import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/auth/widgets/card_register_form.dart';
import 'package:flutter_with_firebase/routes/app_routes.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "¡HOLA DE NUEVO!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: CardRegisterForm(),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}