import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'electricity_logic.dart';
import 'package:smeta/models/client.dart';
import 'material_drop_down.dart';
import 'extra_logic.dart';

class ExtraField extends StatelessWidget {
  Client client;

  ExtraField(this.client);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return ReactiveFormBuilder(
      form: () => ExtraLogic.form,
      builder: (context, form, child) {
        if (client.dop1 != -1) form.control('dop1').value = client.dop1;
        if (client.dop2 != -1) form.control('dop2').value = client.dop2;
        if (client.dop3 != -1) form.control('dop3').value = client.dop3;
        if (client.dop4 != -1) form.control('dop4').value = client.dop4;
        if (client.dop5 != -1) form.control('dop5').value = client.dop5;
        if (client.dop6 != -1) form.control('dop6').value = client.dop6;
        if (client.name1 != "") form.control('name1').value = client.name1;
        if (client.name2 != "") form.control('name2').value = client.name2;
        if (client.name3 != "") form.control('name3').value = client.name3;
        if (client.name4 != "") form.control('name4').value = client.name4;
        if (client.name5 != "") form.control('name5').value = client.name5;
        if (client.name6 != "") form.control('name6').value = client.name6;

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReactiveTextField(
              onChanged: (_) {
                client.name1 = form.control('name1').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name1',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.dop1 = form.control('dop1').value == null ? 0:  form.control('dop1').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop1',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.name2 = form.control('name2').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name2',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.dop2 = form.control('dop2').value == null ? 0:  form.control('dop2').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop2',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.name3 = form.control('name3').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name3',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.dop3 = form.control('dop3').value == null ? 0:  form.control('dop3').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop3',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.name4 = form.control('name4').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name4',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.dop4 = form.control('dop4').value == null ? 0:  form.control('dop4').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop4',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.name5 = form.control('name5').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name5',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.dop5 = form.control('dop5').value != null ?  form.control('dop5').value : 0;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop5',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                client.name6 = form.control('name6').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Название работы")
                  .inputDecoration(),
              formControlName: 'name6',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_) {
                form.control('dop6').value != null ? client.dop6 = form.control('dop6').value : client.dop6 = 0;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Цена работы")
                  .inputDecoration(),
              formControlName: 'dop6',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
          ],
        );
      },
    );
  }
}
