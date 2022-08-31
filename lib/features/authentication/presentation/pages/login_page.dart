import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            const SizedBox(height: 80),
            // logo
            Column(
              children: const [
                FlutterLogo(
                  size: 55,
                ),
                SizedBox(height: 50),
                Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: LoginForm(),
            ),

            const SizedBox(height: 20),

            Row(
              children: <Widget>[
                const SizedBox(width: 30),
                const Text(
                  'New here ? ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (final context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Registered Now!!',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
