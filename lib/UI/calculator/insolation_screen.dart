import 'package:flutter/material.dart';
import 'package:smeta/decoration/border_decoration.dart';
import '../../models/client.dart';
import 'insolation_field.dart';
import 'package:smeta/models/clients_example.dart';

class InsolationScreen extends StatelessWidget {
  Client client;

  InsolationScreen(this.client);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    BorderDecoration decoration = BorderDecoration(backColor: theme.dialogBackgroundColor, isShadow: true);

    return Center(
      child: Container(
        margin: EdgeInsets.only(top: size.height/30, bottom: size.height/20),
        padding: EdgeInsets.all(9),
        decoration: decoration.border(),
        height: size.height/1.3,
        width: size.width/1.1,
        child: InsolationField(client),
      ),
    );
  }
}
