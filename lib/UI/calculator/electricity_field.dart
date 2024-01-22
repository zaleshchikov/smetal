import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'electricity_logic.dart';
import 'package:smeta/models/client.dart';
import 'material_drop_down.dart';
import 'field_tile.dart';
import 'check_tile.dart';

class ElectricityField extends StatefulWidget {
  Client client;

  ElectricityField(this.client);

  @override
  State<ElectricityField> createState() => _ElectricityFieldState();
}

class _ElectricityFieldState extends State<ElectricityField> {
  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");

  CustomInputDecoration inputDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var sSize = MediaQuery.of(context);

    return ReactiveFormBuilder(
      form: () => ElectricityLogic.form,
      builder: (context, form, child) {
        form.control('cableOutput').value = widget.client.cableOutput;
        if (widget.client.distributionBox != -1)
          form.control('distributionBox').value = widget.client.distributionBox;
        if (widget.client.connectingPoints != -1)
          form.control('connectingPoints').value = widget.client.connectingPoints;
        form.control('cableLaying').value = widget.client.cableLaying;
        if (widget.client.warmFloorConecting != -1)
          form.control('warmFloorConecting').value = widget.client.warmFloorConecting;
        if (widget.client.warmFloor != -1)
          form.control('warmFloor').value = widget.client.warmFloor;
        if (widget.client.warmFloorController != -1)
          form.control('warmFloorController').value =
              widget.client.warmFloorController;
        if (widget.client.warmFloorControllerMaterial != '')
          form.control('warmFloorControllerMaterial').value =
              widget.client.warmFloorControllerMaterial;

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CheckTile((_) => widget.client.cableOutput = form.control('cableOutput').value, 'Вывод кабеля на балкон', 'cableOutput'),
            /*Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)), //BoxDecoration
              child: ReactiveCheckboxListTile(
                onChanged: (_) {
                  widget.client.cableOutput = form.control('cableOutput').value;
                },
                formControlName: 'cableOutput',
                title: Center(
                    child: Text(
                  'Вывод кабеля на балкон',
                  style: TextStyle(color: Colors.white),
                )),
                activeColor: Colors.green,
                checkColor: Colors.white,
              ), //CheckboxListTile
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'distributionBox',
                "Распределительная коробка", theme, form, Container(), "", (_) {
              widget.client.distributionBox = form.control('distributionBox').value;
            }),

            /*ReactiveTextField(
              onChanged: (_) {
                client.distributionBox = form.control('distributionBox').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Распределительная коробка")
                      .inputDecoration(),
              formControlName: 'distributionBox',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'connectingPoints',
                "Подключение точек", theme, form, Container(), "", (_) {
              widget.client.connectingPoints = form.control('connectingPoints').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.connectingPoints =
                    form.control('connectingPoints').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Подключение точек")
                  .inputDecoration(),
              formControlName: 'connectingPoints',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            CheckTile((_) => widget.client.cableLaying = form.control('cableLaying').value, 'Укладка кабеля в гофру', 'cableLaying'),
            /*Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)), //BoxDecoration
              child: ReactiveCheckboxListTile(
                onChanged: (_) {
                  widget.client.cableLaying = form.control('cableLaying').value;
                },
                formControlName: 'cableLaying',
                title: Center(
                    child: const Text(
                  'Укладка кабеля в гофру',
                  style: TextStyle(color: Colors.white),
                )),
                activeColor: Colors.green,
                checkColor: Colors.white,
              ), //CheckboxListTile
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'warmFloorConecting',
                "Подключение теплого пола", theme, form, Container(), "", (_) {
              widget.client.warmFloorConecting =
                  form.control('warmFloorConecting').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.warmFloorConecting =
                    form.control('warmFloorConecting').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Подключение теплого пола")
                      .inputDecoration(),
              formControlName: 'warmFloorConecting',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'warmFloor',
                "Теплый пол",
                theme,
                form,
                MaterialDropDown(
                    ['Инфракрасный', 'Саморегулируемый', 'Теновый', 'нет'],
                    (_) {
                  widget.client.warmFloorMaterial =
                      form.control('warmFloorMaterial').value;
                },
                    'warmFloorMaterial',
                    widget.client.warmFloorMaterial == ""
                        ? 'Материал'
                        : widget.client.warmFloorMaterial),
                widget.client.warmFloorMaterial, (_) {
              widget.client.warmFloor = form.control('warmFloor').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.warmFloor = form.control('warmFloor').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Теплый пол")
                          .inputDecoration(),
                      formControlName: 'warmFloor',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown(
                    ['Инфракрасный', 'Саморегулируемый', 'Теновый', 'нет'],
                    (_) {
                  client.warmFloorMaterial =
                      form.control('warmFloorMaterial').value;
                },
                    'warmFloorMaterial',
                    client.warmFloorMaterial == ""
                        ? 'Материал'
                        : client.warmFloorMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4,
                sSize,
                'warmFloorController',
                "Терморегулятор",
                theme,
                form,
                MaterialDropDown([
                  'механический встраиваемый',
                  'Программируемый встраиваем',
                  'Програм. сенсорный встраиваем',
                  'Механический Наружный',
                  'Программируемый Наружный',
                  'Програм. сенсорный Наружный',
                  'нет'
                ], (_) {
                  widget.client.warmFloorControllerMaterial =
                      form.control('warmFloorControllerMaterial').value;
                },
                    'warmFloorControllerMaterial',
                    widget.client.warmFloorControllerMaterial == ""
                        ? 'Материал'
                        : widget.client.warmFloorControllerMaterial),
                widget.client.warmFloorControllerMaterial, (_) {
              widget.client.warmFloorController =
                  form.control('warmFloorController').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.warmFloorController =
                            form.control('warmFloorController').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration:
                          CustomInputDecoration(hintText: "Терморегулятор")
                              .inputDecoration(),
                      formControlName: 'warmFloorController',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'механический встраиваемый',
                  'Программируемый встраиваем',
                  'Програм. сенсорный встраиваем',
                  'Механический Наружный',
                  'Программируемый Наружный',
                  'Програм. сенсорный Наружный',
                  'нет'
                ], (_) {
                  client.warmFloorControllerMaterial =
                      form.control('warmFloorControllerMaterial').value;
                },
                    'warmFloorControllerMaterial',
                    client.warmFloorControllerMaterial == ""
                        ? 'Материал'
                        : client.warmFloorControllerMaterial)
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
