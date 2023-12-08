import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/models/client.dart';
import 'check_tile.dart';

class InsolationAlert {
  static ShowParamAlert(BuildContext context, Color primaryColor,
      FormGroup screenForm, TextStyle? style, FormGroup alertForm, String element, Client client, List<double> l) =>
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Выберети участки"),
                content: Container(
                  height: MediaQuery.of(context).size.height /1.2,
                  child: ReactiveFormBuilder(
                      form: () => alertForm,
                      builder: (context, alert_form, child) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CheckTile((_) {}, 'Левая стена', 'leftWall'),
                              CheckTile((_) {}, 'Правая стена', 'rightWall'),
                              CheckTile((_) {}, 'Потолок', 'ceiling'),
                              CheckTile((_) {}, 'Пол', 'floor'),
                              CheckTile((_) {}, 'Перила', 'railings'),
                              CheckTile((_) {}, 'Колонны', 'column'),
                              CheckTile((_) {}, 'Фасад', 'front'),
                              ReactiveFormConsumer(
                                builder: (buildContext, alert_form, child) {
                                  return TextButton(
                                    child: Text('Расчитать', style: style),
                                    onPressed: () {
                                      double sum = 0;
                                      for(int i = 0; i < alertForm.controls.keys.length; i++){
                                        if(alertForm.control(alertForm.controls.keys.elementAt(i)).value != null && alertForm.control(alertForm.controls.keys.elementAt(i)).value){
                                          sum += l[i];
                                          print(l[i]);
                                        }
                                      }
                                      if(element == 'penoplex50') client.penoplex50 = sum;
                                      if(element == 'penoplex20') client.penoplex20 = sum;
                                      if(element == 'ecofol05') client.ecofol05 = sum;
                                      if( element == 'coloring') client.coloring = sum;
                                      screenForm.control(element).value = sum;
                                      screenForm.markAllAsTouched();
                                      Navigator.pop(context);
                                    }
                                  );
                                },
                              ),
                            ]);
                      }),
                ));
          });
}
