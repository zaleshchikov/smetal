import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:smeta/models/materials.dart';

class FieldTileWithMaterial extends StatefulWidget {
  double widthK;
  MediaQueryData size;
  String id;
  String hintText;
  ThemeData theme;
  FormGroup form;
  Widget Material;
  String fieldMaterial;
  dynamic f = (_) {};
  dynamic onTap = (_) {};

  FieldTileWithMaterial(this.widthK, this.size, this.id, this.hintText,
      this.theme, this.form, this.Material, this.fieldMaterial, this.f);

  FieldTileWithMaterial.withOnTap(
      this.widthK,
      this.size,
      this.id,
      this.hintText,
      this.theme,
      this.form,
      this.Material,
      this.fieldMaterial,
      this.f,
      this.onTap);

  @override
  State<FieldTileWithMaterial> createState() => _FieldTileWithMaterialState();
}

class _FieldTileWithMaterialState extends State<FieldTileWithMaterial> {

  double price = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.form.controls.keys.contains('${widget.id}Material')){
      try{
        widget.fieldMaterial = widget.form.control('${widget.id}Material').value;
      } catch(e){
      }
    }

    if (widget.form.control(widget.id).value is double &&
        widget.fieldMaterial != "") {
      price = widget.form.control(widget.id).value *
          MaterialPrice.GetPrice(widget.fieldMaterial);
    } else if (widget.form.control(widget.id).value is double &&
        widget.fieldMaterial == "") {
      price = widget.form.control(widget.id).value *
          MaterialPrice.GetPrice(widget.id);
    }
    return InkWell(
        onTap: () {
          setState(() {
            print(widget.fieldMaterial);
          });
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: widget.size.size.width / widget.widthK,
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: ReactiveTextField(
                  keyboardType: TextInputType.number,
                  onSubmitted: widget.f,
                  onTapOutside: widget.f,
                  onTap: widget.onTap,
                  onChanged: widget.f,
                  cursorColor: widget.theme.primaryColor,
                  decoration: CustomInputDecoration(hintText: widget.hintText)
                      .inputDecoration(),
                  formControlName: widget.id,
                  validationMessages: {
                    'required': (error) => 'Обязательное поле'
                  },
                ),
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  print(0);
                });
              },
              child: widget.Material),
          Column(
            children: [

                 Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      border: Border.all(
                        width: 10,
                      ),
                    ),
                    height: widget.size.size.height / 10,
                    width: widget.size.size.width / 4.5,
                    child: Center(child: Text(price.toStringAsFixed(2)))),

              Container(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
