import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'first_data_logic.dart';
import 'second_data.dart';
import 'package:smeta/models/client.dart';

class FirstDataField extends StatelessWidget {
  Client client;

  FirstDataField(this.client);

  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");
  CustomInputDecoration inputDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return ReactiveFormBuilder(
      form: () => FirstDataLogic.form,
      builder: (context, form, child) {
        if (client.name != "") form.control('name').value = client.name;
        if (client.address != "") form.control('address').value = client.address;
        if (client.number != "") form.control('number').value = client.number;
        if (client.level!= -1) form.control('level').value = client.level;
        if (client.elevator != "") form.control('elevator').value = client.elevator;


        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReactiveTextField(
              onChanged: (_){
                client.name = form.control('name').value;
              },
              cursorColor: theme.primaryColor,
              decoration: nameDecoration.inputDecoration(),
              formControlName: 'name',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_){
                client.address = form.control('address').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Адрес").inputDecoration(),
              formControlName: 'address',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_){
                client.number = form.control('number').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Номер телефона")
                  .inputDecoration(),
              formControlName: 'number',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              onChanged: (_){
                client.level = form.control('level').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Этаж").inputDecoration(),
              formControlName: 'level',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveDropdownField<String>(
              onChanged: (_){
                print(client.floorRaising);
                client.elevator = form.control('elevator').value;
              },
                decoration: CustomInputDecoration(hintText: "Способ подъема").inputDecoration(),
                formControlName: 'elevator',
                hint: client.elevator == "" ? Text('Способ подъема') : Text(client.elevator),
                items: const [
                  DropdownMenuItem(
                    value: "Лифт",
                    child: Text('Лифт'),
                  ),
                  DropdownMenuItem(
                    value: "Лестница",
                    child: Text('Лестница'),
                  ),
                ]),
          ],
        );
      },
    );
  }
}
