import 'package:flutter/material.dart';
import 'package:smeta/UI/auth_form/auth_background.dart';
import 'auth_ui.dart';
import 'package:smeta/admin/main_admin_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.height/8,
          ),
            AuthBackground(),
          TextButton(
            child: Text("Я администратор",
              style: theme.textTheme.bodyMedium,
            ),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainAdminScreen()));
            },
          ),
          Container(
            height: size.height/8,
          ),
        ],
      ),
    );
  }
}
