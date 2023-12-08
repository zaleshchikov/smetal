import 'package:flutter/material.dart';
import 'package:smeta/decoration/border_decoration.dart';
import 'second_data_field.dart';
import 'package:smeta/UI/drawer/drawer.dart';
import 'package:smeta/models/clients_example.dart';
class SecondDataScreen extends StatelessWidget {
  SecondDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    BorderDecoration decoration = BorderDecoration(
        backColor: theme.dialogBackgroundColor, isShadow: true);
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: theme.iconTheme,
            title: Text("Калькулятор",
                style: TextStyle(
                    fontFamily: theme.textTheme.titleLarge!.fontFamily,
                    fontSize: theme.textTheme.titleLarge!.fontSize,
                    color: Colors.black))),
        drawer: CustomDrawer(name: "ФИО Менеджера"),
        body: SingleChildScrollView(
            child: Center(
          child: Container(
            margin: EdgeInsets.only(
                top: size.height / 30, bottom: size.height / 20),
            padding: EdgeInsets.all(9),
            decoration: decoration.border(),
            height: size.height*2,
            width: size.width / 1.1,
            child: SecondDataField(Clients.clients[0]),
          ),
        )));
  }
}
