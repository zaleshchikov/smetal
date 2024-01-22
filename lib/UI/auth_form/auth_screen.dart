import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smeta/UI/auth_form/auth_background.dart';
import 'auth_ui.dart';
import 'package:smeta/admin/main_admin_screen.dart';

class AuthScreen extends StatelessWidget {
  SharedPreferences prefs;
  AuthScreen(this.prefs);
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
            AuthBackground(prefs),
          Container(
            height: size.height/8,
          ),
        ],
      ),
    );
  }
}
