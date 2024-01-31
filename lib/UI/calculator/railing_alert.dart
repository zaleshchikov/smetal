import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:smeta/models/client.dart';

class FrontAlert {

  static ShowFrontAlert(Client client, BuildContext context, Color primaryColor,
      FormGroup screenForm, TextStyle? style, FormGroup alertForm, String element) =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Введите параметры"),
                content: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ReactiveFormBuilder(
                      form: () => alertForm,
                      builder: (context, alert_form, child) {
                        alert_form.control('heigth').value = client.frontHeight;
                        alert_form.control('width').value = client.frontWight;
                        alert_form.control('kvadratura').value = client.frontKvadratura;

                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReactiveTextField(
                                onChanged: (_){
                                  client.frontHeight = alert_form.control('heigth').value;
                                  client.frontWight = alert_form.control('width').value;
                                  client.frontKvadratura = alert_form.control('kvadratura').value;
                                  screenForm.control('${element}Height').value =
                                      alert_form.control('heigth').value;
                                },
                                keyboardType: TextInputType.number,
                                cursorColor: primaryColor,
                                decoration: CustomInputDecoration(
                                    hintText: "Введите высоту")
                                    .inputDecoration(),
                                formControlName: 'heigth',
                                validationMessages: {
                                  'required': (error) => 'Введите ширину'
                                },
                              ),
                              ReactiveTextField(
                                onChanged: (_){
                                  client.frontHeight = alert_form.control('heigth').value;
                                  client.frontWight = alert_form.control('width').value;
                                  client.frontKvadratura = alert_form.control('kvadratura').value;
                                  screenForm.control('${element}Width').value =
                                      alert_form.control('width').value;
                                },
                                keyboardType: TextInputType.number,
                                cursorColor: primaryColor,
                                decoration: CustomInputDecoration(
                                    hintText: "введите ширину")
                                    .inputDecoration(),
                                formControlName: 'width',
                                validationMessages: {
                                  'required': (error) => 'Обязательное поле'
                                },
                              ),
                              ReactiveTextField(
                                onChanged: (_){
                                  client.frontHeight = alert_form.control('heigth').value;
                                  client.frontWight = alert_form.control('width').value;
                                  client.frontKvadratura = alert_form.control('kvadratura').value;
                                  screenForm.control('${element}Kvadratura').value =
                                      alert_form.control('kvadratura').value;
                                },
                                keyboardType: TextInputType.number,
                                cursorColor: primaryColor,
                                decoration: CustomInputDecoration(
                                    hintText: "Квадратура")
                                    .inputDecoration(),
                                formControlName: 'kvadratura',
                                validationMessages: {
                                  'required': (error) => 'Обязательное поле'
                                },
                              ),
                              ReactiveFormConsumer(
                                builder: (buildContext, alert_form, child) {
                                  return TextButton(
                                    child: Text('Расчитать', style: style),
                                    onPressed: () async {
                                      screenForm.control(element).value =
                                          alert_form.control('heigth').value/1000 *
                                              alert_form.control('width').value /1000 - alert_form.control('kvadratura').value;
                                      client.front = alert_form.control('heigth').value/1000 *
                                          alert_form.control('width').value /1000 - alert_form.control('kvadratura').value;;
                                      client.frontHeight = alert_form.control('heigth').value;
                                      client.frontWight = alert_form.control('width').value;
                                      client.frontKvadratura = alert_form.control('kvadratura').value;
                                      screenForm.markAllAsTouched();
                                      Navigator.pop(context);
                                    },
                                  );
                                },
                              ),
                            ]);
                      }),
                ));
          });
}
