import 'package:flutter/material.dart';
import 'package:smeta/UI/clients_base/client_base.dart';
import 'package:smeta/UI/calculator/calculator_main_screen.dart';
import 'package:smeta/models/client.dart';

class CustomDrawer extends StatelessWidget {
  String name;
  CustomDrawer({required this.name});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('$name',
                style: TextStyle(
                    fontFamily: theme.textTheme.titleLarge!.fontFamily,
                    fontSize: theme.textTheme.titleLarge!.fontSize,
                    color: Colors.black)),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: Icon(
              Icons.train,
            ),
            title: Text('База клиентов', style: theme.textTheme.bodyMedium),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainManagerScreen()));
            },
          ),
          ListTile(
            iconColor: Colors.black,
            leading: Icon(
              Icons.calculate,
            ),
            title: Text('Калькулятор', style: theme.textTheme.bodyMedium),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalculatorMainScreen("Калькулятор", Client("", "", "", 0, "", 0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, "", "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",'',  false, 0, 0, false, 0, 0,'', 0,'', 0, 0, 0, 0, 0, 0, 0, 0, '', 0,'',0,0,0,0,0,0,'','','','','','', false, false))));
            },
          )
        ],
      ),
    );
  }
}
