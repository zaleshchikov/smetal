import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smeta/UI/clients_base/client_base.dart';
import 'package:smeta/UI/calculator/calculator_main_screen.dart';
import 'package:smeta/models/client.dart';
import 'package:smeta/UI/auth_form/auth_screen.dart';
import 'package:smeta/main.dart';

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
                      builder: (context) => CalculatorMainScreen("Калькулятор", Client("", "", "", 0, "", 0,  0,0, 0, 0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",  "",'',  false, 0, 0, false, 0, 0,'', 0,'', 0, 0, 0, 0, 0, 0, 0, 0, '', 0,'',0,0,0,0,0,0,'','','','','','', false, false, 0))));
            },
          ),
          Container(height: MediaQuery.of(context).size.height/2,),
          TextButton(
              onPressed: () async {
                var prefs = await SharedPreferences.getInstance();
                prefs.clear();
                Navigator
                    .of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) =>MyApp(prefs)));
              },
              child: Text("Выйти из аккаунта",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: theme.textTheme.titleLarge!.fontFamily,
                      fontSize: theme.textTheme.titleLarge!.fontSize,
                      color: Colors.black))),
        ],
      ),
    );
  }
}
