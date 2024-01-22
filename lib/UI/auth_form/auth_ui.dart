import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'auth_logic.dart';
import 'package:smeta/UI/clients_base/client_base.dart';
import 'package:http/http.dart' as http;

class AuthForm extends StatelessWidget {
  SharedPreferences prefs;

  AuthForm(this.prefs);

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
              validationMessages: {'required': (error) => 'Обязательное поле', 'wrondPassword': (error) => 'Неверный пароль'},
            ),
            ReactiveTextField(
              onChanged: (_) => form.markAllAsTouched(),
              cursorColor: theme.primaryColor,
              decoration: passwordDecoration.inputDecoration(),
              formControlName: 'password',
              validationMessages: {
                'required': (error) => 'Обязательное поле',
                'wrondPassword': (error) => 'Неверный пароль'
              },
            ),
            Container(
              height: size.height / 12,
            ),
            ReactiveFormConsumer(
              builder: (buildContext, form, child) {
                return TextButton(
                  child: Text('Войти', style: theme.textTheme.titleLarge),
                  onPressed: () async {
                    if(!form.valid){
                      if(!form.control('name').valid){
                      form.control('name').setErrors({'required': false});}
                      if(!form.control('password').valid){
                      form.control('password').setErrors({'required': false});}
                      form.markAllAsTouched();
                      return;
                    }
                    var body = {
                      'name': form.control('name').value,
                      'password': form.control('password').value
                    };
                    final response = await http.post(
                        headers: {
                          'Accept': 'application/json',
                          "Content-Type": "application/json"
                        },
                        Uri.parse(
                            'http://smeta.pythonanywhere.com/login/check_login/'),
                        body: json.encode(body));
                    if(response.body == 'False'){
                      form.control('password').setErrors({'wrondPassword': false});
                      form.markAllAsTouched();
                      return;
                    }
                    else{
                      prefs.setInt('managerId', int.parse(response.body));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainManagerScreen()));
                    }
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
