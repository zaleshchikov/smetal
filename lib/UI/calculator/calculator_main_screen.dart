
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smeta/UI/calculator/first_data_logic.dart';
import 'package:smeta/UI/drawer/drawer.dart';
import '../../models/client.dart';
import 'first_data.dart';
import 'second_data_screen.dart';
import 'coloring_screen.dart';
import 'electricity_screen.dart';
import 'insolation_screen.dart';
import 'extra_screen.dart';
import 'package:smeta/models/calculate.dart';
import 'package:smeta/pdf/pdf_screen.dart';
import 'package:smeta/decoration/border_decoration.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CalculatorMainScreen extends StatefulWidget {
  String title;
  Client client;

  CalculatorMainScreen(this.title, this.client);

  @override
  State<CalculatorMainScreen> createState() => _CalculatorMainScreenState();
}

class _CalculatorMainScreenState extends State<CalculatorMainScreen> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  BorderDecoration borderDecoration =
      BorderDecoration(backColor: Colors.white, isShadow: false);
  double result = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final List<Widget> _pages = <Widget>[
      FisrtDataScreen(widget.client),
      SecondDataScreen(widget.client),
      InsolationScreen(widget.client),
      ElectricityScreen(widget.client),
      ColoringScreen(widget.client),
      ExtraScreen(widget.client)
    ];
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: theme.iconTheme,
          title: Text("${widget.title}",
              style: TextStyle(
                  fontFamily: theme.textTheme.titleLarge!.fontFamily,
                  fontSize: theme.textTheme.titleLarge!.fontSize,
                  color: Colors.black))),
      drawer: CustomDrawer(name: "ФИО Менеджера"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _pages.elementAt(selectedIndex),
              TextButton(
                  onPressed: () {
                    print(FirstDataLogic.form.value);
                    selectedIndex == 5
                        ? setState(() {
                            result = Calculation.Calculate(widget.client);
                          })
                        : setState(() {
                            selectedIndex++;
                          });
                  },
                  child: Text(selectedIndex == 5 ? "Расчитать" : "Далее",
                      style: TextStyle(
                          fontFamily: theme.textTheme.titleLarge!.fontFamily,
                          fontSize: theme.textTheme.titleLarge!.fontSize,
                          color: Colors.black))),
              Container(
                height: MediaQuery.of(context).size.height / 20,
              ),
              selectedIndex == 5
                  ? Column(
                      children: [
                        Text(result.toStringAsFixed(2),
                            style: TextStyle(
                                fontSize: theme.textTheme.titleLarge!.fontSize,
                                fontFamily:
                                    theme.textTheme.titleLarge!.fontFamily,
                                color: Colors.black)),
                        Container(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: borderDecoration.border(),
                              child: TextButton(
                                  onPressed: () async
                                  {

                                    final prefs = await SharedPreferences.getInstance();
                                    var managerId = prefs.getInt('managerId');
                                    final response = await http.get(
                                        headers: {
                                          'Accept': 'application/json',
                                          "Content-Type": "application/json"
                                        },
                                        Uri.parse(
                                            'http://smeta.pythonanywhere.com/'));

                                    var jsDecode = json.decode(response.body);
                                    jsDecode = jsDecode.where((e) => e['id'] == widget.client.id);
                                    //
                                    if(jsDecode.toList().length == 0) {
                                      final prefs = await SharedPreferences
                                          .getInstance();
                                      var js = widget.client.toJson();
                                      js.addAll({
                                        'managerId': prefs.getInt('managerId')
                                      });
                                      var response = await http.post(
                                          headers: {
                                            'Accept': 'application/json',
                                            "Content-Type": "application/json"
                                          },
                                          Uri.parse(
                                              'http://smeta.pythonanywhere.com/clients/add'),
                                          body: json.encode(js));

                                      final response_to_id = await http.get(
                                          headers: {
                                            'Accept': 'application/json',
                                            "Content-Type": "application/json"
                                          },
                                          Uri.parse(
                                              'http://smeta.pythonanywhere.com/'));

                                      var jsDecode = json.decode(response_to_id.body);
                                      jsDecode = jsDecode.where((e) => e['name'] == widget.client.name);
                                      widget.client.id = jsDecode.toList()[0]['id'];
                                      return;
                                    } else{
                                      final prefs = await SharedPreferences
                                          .getInstance();
                                      var js = widget.client.toJson();
                                      js.addAll({
                                        'managerId': prefs.getInt('managerId')
                                      });
                                      var response = await http.put(
                                          headers: {
                                            'Accept': 'application/json',
                                            "Content-Type": "application/json"
                                          },
                                          Uri.parse(
                                              'http://smeta.pythonanywhere.com/clients/${widget.client.id}'),
                                          body: json.encode(js));
                                    }
                                    },
                                  child: Text('Сохранить в базу',
                                      style: TextStyle(
                                          fontFamily: theme
                                              .textTheme.titleLarge!.fontFamily,
                                          fontSize:
                                          theme.textTheme.titleLarge!.fontSize,
                                          color: Colors.black))),
                            ),
                            Container(height: MediaQuery.of(context).size.height/100,),
                            Container(
                              decoration: borderDecoration.border(),
                              child: TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PdfScreen(widget.client),
                                        ),
                                      ),
                                  child: Text('Открыть pdf',
                                      style: TextStyle(
                                          fontFamily: theme
                                              .textTheme.titleLarge!.fontFamily,
                                          fontSize:
                                              theme.textTheme.titleLarge!.fontSize,
                                          color: Colors.black))),
                            ),
                          ],
                        )
                      ],
                    )
                  : Container(),
              Container(
                height: MediaQuery.of(context).size.height / 20,
              ),
            ],
          ), //New
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 40),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: theme.iconTheme.color),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.architecture_outlined, color: theme.iconTheme.color),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.curtains_closed, color: theme.iconTheme.color),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt, color: theme.iconTheme.color),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_color_fill, color: theme.iconTheme.color),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: theme.iconTheme.color),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}
