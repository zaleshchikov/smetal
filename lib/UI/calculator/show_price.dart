import 'package:flutter/material.dart';

class ShowPrice extends StatelessWidget {
  MediaQueryData size;
  String text;
ShowPrice(this.size, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 10,
        ),
      ),
      height: size.size.height/12,
      width: size.size.width/8,
      child: Text(
        text
      )
    );
  }
}
