import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';

class MaterialDropDown extends StatelessWidget {
  List<String> dropDownItems;
  Function(FormControl<String>) f;
  String id;
  String name;

  MaterialDropDown(this.dropDownItems, this.f, this.id, this.name);

  List<DropdownMenuItem<String>> items = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < dropDownItems.length; i++) {
      items.add(
        DropdownMenuItem(
          value: dropDownItems[i],
          child: Text(dropDownItems[i], overflow: TextOverflow.clip, softWrap: true, style: TextStyle(fontSize: 12),),
        ),
      );
    }

    return Container(
        width: MediaQuery.of(context).size.width / 2.7,
        child: ReactiveDropdownField<String>(
          
            validationMessages: {'required': (error) => 'Материал'},
            isExpanded: true,
            onChanged: f,
            decoration: InputDecoration(
                hintText: name,
                hintMaxLines: 2,
                hintStyle: TextStyle(
                  fontSize: 12
                ),
                helperText: "Материал",
                helperStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.montserrat().fontFamily),
                errorStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.montserrat().fontFamily),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50))),
            formControlName: id,
            items: items));
  }
}
