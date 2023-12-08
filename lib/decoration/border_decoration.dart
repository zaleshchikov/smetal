import 'package:flutter/material.dart';

class BorderDecoration{
  Color backColor;
  bool isShadow;
  BorderDecoration({
    required this.backColor,
    required this.isShadow
});

  BoxDecoration border() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: isShadow? Colors.grey : Colors.grey.shade400,
          spreadRadius: isShadow? 5 : 1,
          blurRadius: 15,
        ),
      ],
      color: backColor,
      border: Border.all(
        color: Colors.black,
          width: 3.0
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(25.0) //
      ),
    );
  }
}