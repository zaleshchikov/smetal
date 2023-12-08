import 'package:flutter/material.dart';
import 'package:smeta/UI/drawer/drawer.dart';
import 'client_tile.dart';
import 'package:smeta/models/clients_example.dart';

class MainManagerScreen extends StatelessWidget {
  const MainManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          SearchBar(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            leading: const Icon(Icons.search),
          ),
          ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: Clients.clients.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ClientTile(client: Clients.clients[index])],
                    ));
              }),
        ],
      ),
    );
  }
}
