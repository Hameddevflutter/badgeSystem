import 'package:flutter/material.dart';

import '../widgets/authentication.dart';
import 'login_page.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: const Center(
          child: Text('Welcome'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AuthenticationHelper().signOut().then(
                  (final _) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (final context) => const LoginPage(),
                    ),
                  ),
                );
          },
          tooltip: 'Logout',
          child: const Icon(Icons.logout),
        ),
      );
}
