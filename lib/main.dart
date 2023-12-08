import 'package:flutter/material.dart';
import 'package:smeta/UI/auth_form/auth_background.dart';
import 'package:smeta/UI/auth_form/auth_screen.dart';
import 'package:smeta/UI/auth_form/auth_ui.dart';
import 'package:theme_provider/theme_provider.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                  body: AuthScreen()
                )
              )
            )
      )
    );
  }
}
