import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smeta/UI/drawer/drawer.dart';
import '../../decoration/border_decoration.dart';
import '../calculator/calculator_main_screen.dart';
import 'client_tile.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:smeta/models/client.dart';

class MainManagerScreen extends StatefulWidget {
  @override
  State<MainManagerScreen> createState() => _MainManagerScreenState();
}

class _MainManagerScreenState extends State<MainManagerScreen> {


  Future<List<Client>> getClients() async {
    List<Client> clients = [];
    var prefs = await SharedPreferences.getInstance();
    var managerId = prefs.getInt('managerId');
    var response = await http.get(headers: {
      'Accept': 'application/json',
      "Content-Type": "application/json"
    }, Uri.parse('http://smeta.pythonanywhere.com/'));

    var jsDecode = json.decode(response.body);
    if (managerId != 0) {
      jsDecode = jsDecode.where((e) => e['managerId'] == managerId);
    }
    //
    for (var i in jsDecode) {
      clients.add(Client.fromJson(i));
    }
    return clients;
  }

  @override
  Widget build(BuildContext context) {
    BorderDecoration borderDecoration =
        BorderDecoration(backColor: Colors.white, isShadow: false);
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: theme.iconTheme,
            title: Text("База клиентов",
                style: TextStyle(
                    fontFamily: theme.textTheme.titleLarge!.fontFamily,
                    fontSize: theme.textTheme.titleLarge!.fontSize,
                    color: Colors.black))),
        drawer: CustomDrawer(
          name: "ФИО Менеджера",
        ),
        body: FutureBuilder(
          // Initialize FlutterFire:
          future: getClients(),
          builder: (context, snapshot) {
            // Check for errors
            if (snapshot.hasError) {
              return Center(
                  child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Text('Произошла шибка'),
                  Container(height: MediaQuery.of(context).size.height / 3),
                  TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Обновить данные",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily:
                                  theme.textTheme.titleLarge!.fontFamily,
                              fontSize: theme.textTheme.titleLarge!.fontSize,
                              color: Colors.black))),
                ],
              ));
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if(snapshot.data!.length == 0){
                return Center(child: Text('Данных о клиентах нет'));
              }
              return ListView(
                children: [
                  SearchBar(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    leading: const Icon(Icons.search),
                  ),
                  ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: size.height / 7,
                                  decoration: borderDecoration.border(),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          child: Container(
                                            width: size.width / 1.5,
                                            child: Center(
                                              child: Text(
                                                snapshot.data![index].name,
                                                style: TextStyle(
                                                    fontSize: theme.textTheme
                                                        .titleLarge!.fontSize,
                                                    fontFamily: theme.textTheme
                                                        .titleLarge!.fontFamily,
                                                    color: Colors.black),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CalculatorMainScreen(
                                                            snapshot.data![index].name,
                                                            snapshot.data![index])));
                                          },
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                                                    backgroundColor:
                                                        Colors.white,
                                                    title: Text(
                                                        "Вы точно хотите удалить данные клиента?"),
                                                    titleTextStyle: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                    actionsOverflowButtonSpacing:
                                                        20,
                                                    actions: [
                                                      ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .black),
                                                          onPressed: () async{

                                                            var response = await http.delete(
                                                                headers: {
                                                                  'Accept': 'application/json',
                                                                  "Content-Type": "application/json"
                                                                },
                                                                Uri.parse(
                                                                    'http://smeta.pythonanywhere.com/delete_client/${snapshot.data![index].id}'),
                                                                body: json.encode(
                                                                    {

                                                                    }));
                                                            setState(() {

                                                            });
                                                            Navigator.pop(context);
                                                          },
                                                          child: Text("Да")),
                                                      ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .black),
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: Text("Нет")),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            icon: Icon(Icons.delete))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ));
                      }),
                ],
              );
            }
            // Otherwise, show something whilst waiting for initialization to complete
            return Center(
              child: Text('Данные загружаются'),
            );
            ;
          },
        ));
  }
}
