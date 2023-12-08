import 'package:flutter/material.dart';
import 'package:smeta/decoration/border_decoration.dart';
import 'package:smeta/models/client.dart';
import 'package:smeta/UI/calculator/calculator_main_screen.dart';


class ClientTile extends StatelessWidget {
  Client client;

  ClientTile({required this.client});

  BorderDecoration borderDecoration =
      BorderDecoration(backColor: Colors.white, isShadow: false);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      height: size.height / 7,
      decoration: borderDecoration.border(),
      child: Center(
        child: InkWell(
          child: Text(
            client.name,
            style: TextStyle(
                fontSize: theme.textTheme.titleLarge!.fontSize,
                fontFamily: theme.textTheme.titleLarge!.fontFamily,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalculatorMainScreen(client.name, client)));
          },
        ),
      ),
    );
  }
}
