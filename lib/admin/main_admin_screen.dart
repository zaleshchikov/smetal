import 'package:flutter/material.dart';
import 'package:smeta/UI/drawer/drawer.dart';
import 'package:smeta/UI/clients_base/client_tile.dart';
import 'package:smeta/models/clients_example.dart';
class MainAdminScreen extends StatelessWidget {
  const MainAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return
      Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: theme.iconTheme,
            title: Text("База клиентов менеджеров",
                style: TextStyle(
                    fontFamily: theme.textTheme.titleLarge!.fontFamily,
                    fontSize: theme.textTheme.titleLarge!.fontSize,
                    color: Colors.black
                )
            )),
        drawer: CustomDrawer(name: "Администратор"),
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
                        children: [
                          ClientTile(client: Clients.clients[index])
                        ],
                      )
                  );
                }
            ),
          ],
        ),
      );
  }
}
