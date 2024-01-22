import 'package:flutter/material.dart';
import 'package:smeta/UI/auth_form/auth_background.dart';
import 'package:smeta/UI/auth_form/auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_provider/theme_provider.dart';
import 'UI/clients_base/client_base.dart';
import 'themes/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs));
}

class MyApp extends StatelessWidget {
  SharedPreferences prefs;

  MyApp(this.prefs);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        themes: [
          CustomAppThemeLight(),
          AppTheme.light(),
        ],
        child: ThemeConsumer(
            child: Builder(
                builder: (themeContext) => MaterialApp(
                    theme: ThemeProvider.themeOf(themeContext).data,
                    home: Scaffold(
                        body: prefs.getInt('managerId') != null
                            ? MainManagerScreen()
                            : AuthScreen(prefs))))));
  }
}
