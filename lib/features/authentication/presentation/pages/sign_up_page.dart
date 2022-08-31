import 'package:flutter/material.dart';

import '../widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            const SizedBox(height: 80),
            // logo
            Column(
              children: const [
                FlutterLogo(
                  size: 55,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 24),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SignUpForm(),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Text('Already here  ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(' Get Logged in Now!',
                            style: TextStyle(fontSize: 20, color: Colors.blue)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Container buildLogo() => Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.blue),
        child: const Center(
          child: Text(
            "T",
            style: TextStyle(color: Colors.white, fontSize: 60.0),
          ),
        ),
      );
}
