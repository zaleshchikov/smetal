import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'auth_logic.dart';
import 'package:smeta/UI/clients_base/client_base.dart';

class AuthForm extends StatelessWidget {
  AuthForm({super.key});

  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");
  CustomInputDecoration passwordDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return ReactiveFormBuilder(
      form: () => AuthLogic.form,
      builder: (context, form, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Авторизация", style: theme.textTheme.titleLarge),
            ReactiveTextField(
              cursorColor: theme.primaryColor,
              decoration: nameDecoration.inputDecoration(),
              formControlName: 'name',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            ReactiveTextField(
              cursorColor: theme.primaryColor,
              decoration: passwordDecoration.inputDecoration(),
              formControlName: 'password',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),
            Container(
              height: size.height / 12,
            ),
            ReactiveFormConsumer(
              builder: (buildContext, form, child) {
                return TextButton(
                  child: Text('Войти', style: theme.textTheme.titleLarge),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainManagerScreen()));
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
