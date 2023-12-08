import 'package:flutter/material.dart';
import 'package:smeta/decoration/border_decoration.dart';
import '../../models/client.dart';
import 'coloring_field.dart';
import 'extra_work.dart';
import 'package:smeta/models/clients_example.dart';

class ExtraScreen extends StatelessWidget {
  Client client;

  ExtraScreen(this.client);

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
        height: size.height*1.7,
        width: size.width/1.1,
        child: ExtraField(client),
      ),
    );
  }
}
