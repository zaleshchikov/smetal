import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:smeta/models/client.dart';
import 'material_drop_down.dart';
import 'coloring_logic.dart';
import 'field_tile.dart';
import 'insolation_alert.dart';
import 'insolation_alert_logic.dart';



class ColoringField extends StatefulWidget {
  Client client;

  ColoringField(this.client);

  @override
  State<ColoringField> createState() => _ColoringFieldState();
}

class _ColoringFieldState extends State<ColoringField> {
  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");

  CustomInputDecoration inputDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var sSize = MediaQuery.of(context);
    List<double> paramList = [
      widget.client.leftWall,
      widget.client.rightWall,
      widget.client.ceiling,
      widget.client.floor,
      widget.client.railings,
      widget.client.column,
      widget.client.front
    ];

    return ReactiveFormBuilder(
      form: () => ColoringLogic.form,
      builder: (context, form, child) {
        if (widget.client.cleaning != 0)
          form.control('cleaning').value = widget.client.cleaning;
        if (widget.client.priming != 0) form.control('priming').value = widget.client.priming;
        if (widget.client.coloring != 0)
          form.control('coloring').value = widget.client.coloring;
        if (widget.client.color != 0) form.control('color').value = widget.client.color;

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FieldTileWithMaterial(1.8, sSize, 'cleaning',
                "Зачистка", theme, form, Container(), "", (_) {
                  widget.client.cleaning = form.control('cleaning').value;
                }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.cleaning = form.control('cleaning').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Зачистка").inputDecoration(),
              formControlName: 'cleaning',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'priming',
                "Грунтовка", theme, form, Container(), "", (_) {
                  widget.client.priming = form.control('priming').value;
                }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.priming = form.control('priming').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Грунтовка")
                  .inputDecoration(),
              formControlName: 'priming',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial.withOnTap(4.2, sSize, 'coloring',
                "Покраска", theme, form, MaterialDropDown([
                  'Покраска с Двух сторон 3 слоя',
                  'Покраска 3 слоя(валик,кисть)',
                  'Покраска 2 слоя(краскопульт)',
                  'Покраска 3слоя(краскопульт)',
                  'нет'
                ], (_) {
                  widget.client.coloringMaterial =
                      form.control('coloringMaterial').value;
                },
                    'coloringMaterial',
                    widget.client.coloringMaterial == ""
                        ? 'Материал'
                        : widget.client.coloringMaterial), widget.client.coloringMaterial, (_) {
                  widget.client.coloring = form.control('coloring').value;
                },
                    (_) {
                  InsolationAlert.ShowParamAlert(
                      context,
                      theme.primaryColor,
                      form,
                      theme.textTheme.titleLarge,
                      InsolationAlertLogic.form,
                      'coloring',
                      widget.client,
                      paramList);
                }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.coloring = form.control('coloring').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Покраска")
                          .inputDecoration(),
                      formControlName: 'coloring',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'Покраска с Двух сторон 3 слоя',
                  'Покраска 3 слоя(валик,кисть)',
                  'Покраска 2 слоя(краскопульт)',
                  'Покраска 3слоя(краскопульт)',
                  'нет'
                ], (_) {
                  client.coloringMaterial =
                      form.control('coloringMaterial').value;
                },
                    'coloringMaterial',
                    client.coloringMaterial == ""
                        ? 'Материал'
                        : client.coloringMaterial)
              ],
            ),*/
            FieldTileWithMaterial(4.2, sSize, 'color',
                "Покраска", theme, form,                 MaterialDropDown([
                  'Tikkurila 0,9л -7м2',
                  'Tikkurila 2,7л -23м2',
                  'Tikkurila 9л - 81м2',
                  'Dulux 0,9л - 7м2',
                  'Dulux 2,7л - 23м2',
                  'Dulux 9л - 81м2',
                  'без покраски'
                ], (_) {
                  widget.client.colorMaterial = form.control('colorMaterial').value;
                },
                    'colorMaterial',
                    widget.client.colorMaterial == ""
                        ? 'Материал'
                        : widget.client.colorMaterial)
                , widget.client.colorMaterial, (_) {
                  widget.client.coloring = form.control('coloring').value;
                }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.color = form.control('color').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Краска")
                          .inputDecoration(),
                      formControlName: 'color',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'Tikkurila 0,9л -7м2',
                  'Tikkurila 2,7л -23м2',
                  'Tikkurila 9л - 81м2',
                  'Dulux 0,9л - 7м2',
                  'Dulux 2,7л - 23м2',
                  'Dulux 9л - 81м2',
                  'без покраски'
                ], (_) {
                  client.colorMaterial = form.control('colorMaterial').value;
                },
                    'colorMaterial',
                    client.colorMaterial == ""
                        ? 'Материал'
                        : client.colorMaterial)
              ],
            ),*/
            ReactiveFormConsumer(
              builder: (buildContext, form, child) {
                return TextButton(
                  child: Text('Расчитать позиции', style: theme.textTheme.titleLarge),
                  onPressed: () async {
                    setState(() {

                    });
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
