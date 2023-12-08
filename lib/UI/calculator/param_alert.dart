import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';

class ParametrAlert {
  static ShowParamAlert(BuildContext context, Color primaryColor,
          FormGroup screenForm, TextStyle? style, FormGroup alertForm, String element) =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Введите параметры"),
                content: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ReactiveFormBuilder(
                      form: () => alertForm,
                      builder: (context, alert_form, child) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReactiveTextField(
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
                              ReactiveFormConsumer(
                                builder: (buildContext, alert_form, child) {
                                  return TextButton(
                                    child: Text('Расчитать', style: style),
                                    onPressed: () async {
                                      screenForm.control(element).value =
                                          alert_form.control('heigth').value/1000 *
                                              alert_form.control('width').value/1000;
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
