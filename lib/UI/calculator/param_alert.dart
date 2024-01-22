import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:smeta/models/client.dart';

class ParametrAlert {
  static ShowParamAlert(
          Client client,
          BuildContext context,
          Color primaryColor,
          FormGroup screenForm,
          TextStyle? style,
          FormGroup alertForm,
          String element) =>
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
                        if (element == 'ceiling') {
                          alert_form.control('heigth').value = client.ceilingHeight;
                          alert_form.control('width').value = client.ceilingWight;
                        }
                        if (element == 'floor')
                        {
                          alert_form.control('heigth').value = client.floorHeight;
                          alert_form.control('width').value = client.floorWight;
                        }
                        if (element == 'leftWall')
                        {
                          alert_form.control('heigth').value = client.leftWallHeight;
                          alert_form.control('width').value = client.leftWallWight;
                        }
                        if (element == 'rightWall')
                        {
                          alert_form.control('heigth').value = client.rightWallHeight;
                          alert_form.control('width').value = client.rightWallWight;
                        }
                        if (element == 'railings')
                        {
                          alert_form.control('heigth').value = client.railingsHeight;
                          alert_form.control('width').value = client.railingsWight;
                        }
                        alert_form.markAllAsTouched();
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReactiveTextField(
                                onChanged: (_) {
                                  if (element == 'ceiling') {
                                    client.ceiling =
                                        screenForm.control(element).value;
                                    client.ceilingHeight =
                                        alert_form.control('heigth').value;
                                    client.ceilingWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'floor')
                                  {
                                    client.floor =
                                        screenForm.control(element).value;
                                    client.floorHeight =
                                        alert_form.control('heigth').value;
                                    client.floorWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'leftWall')
                                  {
                                    client.leftWall =
                                        screenForm.control(element).value;
                                    client.leftWallHeight =
                                        alert_form.control('heigth').value;
                                    client.leftWallWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'rightWall')
                                  {
                                    client.rightWall =
                                        screenForm.control(element).value;
                                    client.rightWallHeight =
                                        alert_form.control('heigth').value;
                                    client.rightWallWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'railings')
                                  {
                                    client.ceiling =
                                        screenForm.control(element).value;
                                    client.railingsHeight =
                                        alert_form.control('heigth').value;
                                    client.railingsWight =
                                        alert_form.control('width').value;
                                  }
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
                                onChanged: (_) {
                                  if (element == 'ceiling') {
                                    client.ceiling =
                                        screenForm.control(element).value;
                                    client.ceilingHeight =
                                        alert_form.control('heigth').value;
                                    client.ceilingWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'floor')
                                  {
                                    client.floor =
                                        screenForm.control(element).value;
                                    client.floorHeight =
                                        alert_form.control('heigth').value;
                                    client.floorWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'leftWall')
                                  {
                                    client.leftWall =
                                        screenForm.control(element).value;
                                    client.leftWallHeight =
                                        alert_form.control('heigth').value;
                                    client.leftWallWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'rightWall')
                                  {
                                    client.rightWall =
                                        screenForm.control(element).value;
                                    client.rightWallHeight =
                                        alert_form.control('heigth').value;
                                    client.rightWallWight =
                                        alert_form.control('width').value;
                                  }
                                  if (element == 'railings')
                                  {
                                    client.ceiling =
                                        screenForm.control(element).value;
                                    client.railingsHeight =
                                        alert_form.control('heigth').value;
                                    client.railingsWight =
                                        alert_form.control('width').value;
                                  }
                                  screenForm.control('${element}Wight').value =
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
                              ReactiveFormConsumer(
                                builder: (buildContext, alert_form, child) {
                                  return TextButton(
                                    child: Text('Расчитать', style: style),
                                    onPressed: () async {
                                      screenForm.control(element).value =
                                          alert_form.control('heigth').value /
                                              1000 *
                                              alert_form
                                                  .control('width')
                                                  .value /
                                              1000;
                                      if (element == 'ceiling') {
                                        client.ceiling =
                                            screenForm.control(element).value;
                                        client.ceilingHeight =
                                            alert_form.control('heigth').value;
                                        client.ceilingWight =
                                            alert_form.control('width').value;
                                      }
                                      if (element == 'floor')
                                      {
                                        client.floor =
                                            screenForm.control(element).value;
                                        client.floorHeight =
                                            alert_form.control('heigth').value;
                                        client.floorWight =
                                            alert_form.control('width').value;
                                      }
                                      if (element == 'leftWall')
                                      {
                                        client.leftWall =
                                            screenForm.control(element).value;
                                        client.leftWallHeight =
                                            alert_form.control('heigth').value;
                                        client.leftWallWight =
                                            alert_form.control('width').value;
                                      }
                                      if (element == 'rightWall')
                                      {
                                        client.rightWall =
                                            screenForm.control(element).value;
                                        client.rightWallHeight =
                                            alert_form.control('heigth').value;
                                        client.rightWallWight =
                                            alert_form.control('width').value;
                                      }
                                      if (element == 'railings')
                                      {
                                        client.ceiling =
                                            screenForm.control(element).value;
                                        client.railingsHeight =
                                            alert_form.control('heigth').value;
                                        client.railingsWight =
                                            alert_form.control('width').value;
                                      }

                                      screenForm.markAllAsTouched();
                                      Navigator.pop(context);
                                      screenForm.markAllAsTouched();
                                    },
                                  );
                                },
                              ),
                            ]);
                      }),
                ));
          });
}
