import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CheckTile extends StatelessWidget {
  Function(FormControl) f;
  String name;
  String id;
  CheckTile(this.f, this.name, this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)), //BoxDecoration
      child: ReactiveCheckboxListTile(
        onChanged: f,
        formControlName: id,
        title: Center(
            child:  Text(
          name,
          style: TextStyle(color: Colors.white),
        )),
        activeColor: Colors.green,
        checkColor: Colors.white,
      ), //CheckboxListTile
    );
  }
}
