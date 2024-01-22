import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputDecoration {
  String hintText = "";
  String prefixText = "";

  CustomInputDecoration({required this.hintText}){
    this.hintText = hintText;
  }

  CustomInputDecoration.withPrefix(String prefixTex, String hintText){
    this.prefixText = prefixTex;
    this.hintText = hintText;
  }


  InputDecoration inputDecoration() => InputDecoration(
    helperMaxLines: 2,

    hintText: hintText,
    helperText: hintText,
      helperStyle: TextStyle(
          color: Colors.white, fontFamily: GoogleFonts.montserrat().fontFamily),
      errorStyle: TextStyle(
          color: Colors.white, fontFamily: GoogleFonts.montserrat().fontFamily),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50)));
}
