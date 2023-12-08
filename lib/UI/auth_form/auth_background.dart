import 'package:flutter/material.dart';
import 'package:smeta/decoration/border_decoration.dart';
import 'auth_ui.dart';

class AuthBackground extends StatelessWidget {
  AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    BorderDecoration decoration = BorderDecoration(backColor: theme.dialogBackgroundColor, isShadow: true);

    return Center(
      child: Container(
        padding: EdgeInsets.all(9),
        decoration: decoration.border(),
        height: size.height/1.8,
        width: size.width/1.4,
        child: AuthForm(),
      ),
    );
  }
}
