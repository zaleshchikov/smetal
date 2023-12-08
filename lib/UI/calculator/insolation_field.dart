import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'package:smeta/models/client.dart';
import 'field_tile.dart';
import 'insolation_logic.dart';
import 'insolation_alert.dart';
import 'insolation_alert_logic.dart';

class InsolationField extends StatefulWidget {
  Client client;

  InsolationField(this.client);

  @override
  State<InsolationField> createState() => _InsolationFieldState();
}

class _InsolationFieldState extends State<InsolationField> {
  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");

  CustomInputDecoration inputDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var sSize = MediaQuery.of(context);

    return ReactiveFormBuilder(
      form: () => InsulationLogic.form,
      builder: (context, form, child) {
        if (widget.client.penoplex50 != 0)
          form.control('penoplex50').value = widget.client.penoplex50;
        if (widget.client.penoplex20 != 0)
          form.control('penoplex20').value = widget.client.penoplex20;
        if (widget.client.insolationPPU != 0)
          form.control('insolationPPU').value = widget.client.insolationPPU;
        if (widget.client.ecofol05 != 0)
          form.control('ecofol05').value = widget.client.ecofol05;
        if (widget.client.sealing != 0)
          form.control('sealing').value = widget.client.sealing;

        List<double> paramList = [
          widget.client.leftWall,
          widget.client.rightWall,
          widget.client.ceiling,
          widget.client.floor,
          widget.client.railings,
          widget.client.column,
          widget.client.front
        ];

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FieldTileWithMaterial.withOnTap(1.8, sSize, 'penoplex50',
                "Пеноплекс 50", theme, form, Container(), "", (_) {
              widget.client.penoplex50 = form.control('penoplex50').value;
            }, (_) {
              InsolationAlert.ShowParamAlert(
                  context,
                  theme.primaryColor,
                  form,
                  theme.textTheme.titleLarge,
                  InsolationAlertLogic.form,
                  'penoplex50',
                  widget.client,
                  paramList);
            }),
            /*ReactiveTextField(
              onChanged: (_){
                client.penoplex50 = form.control('penoplex50').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Пеноплекс 50").inputDecoration(),
              formControlName: 'penoplex50',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial.withOnTap(1.8, sSize, 'penoplex20',
                "Пеноплекс 20", theme, form, Container(), "", (_) {
              widget.client.penoplex20 = form.control('penoplex20').value;
            }, (_) {
              InsolationAlert.ShowParamAlert(
                  context,
                  theme.primaryColor,
                  form,
                  theme.textTheme.titleLarge,
                  InsolationAlertLogic.form,
                  'penoplex20',
                  widget.client,
                  paramList);
            }),
            /*ReactiveTextField(
              onChanged: (_){
                client.penoplex20 = form.control('penoplex20').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Пеноплекс 20").inputDecoration(),
              formControlName: 'penoplex20',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'insolationPPU', "Утпление ППУ",
                theme, form, Container(), "", (_) {
              widget.client.insolationPPU = form.control('insolationPPU').value;
            }),
            /*ReactiveTextField(
              onChanged: (_){
                client.insolationPPU = form.control('insolationPPU').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Утпление ППУ").inputDecoration(),
              formControlName: 'insolationPPU',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial.withOnTap(1.8, sSize, 'ecofol05',
                "Экофол 0.5", theme, form, Container(), "", (_) {
              widget.client.ecofol05 = form.control('ecofol05').value;
            }, (_) {
              InsolationAlert.ShowParamAlert(
                  context,
                  theme.primaryColor,
                  form,
                  theme.textTheme.titleLarge,
                  InsolationAlertLogic.form,
                  'ecofol05',
                  widget.client,
                  paramList);
            }),
            /*ReactiveTextField(
              onChanged: (_){
                client.ecofol05 = form.control('ecofol05').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Экофол 0.5").inputDecoration(),
              formControlName: 'ecofol05',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'sealing', "Герметизация", theme,
                form, Container(), "", (_) {
              widget.client.sealing = form.control('sealing').value;
            }),
            /*ReactiveTextField(
              onChanged: (_){
                client.sealing = form.control('sealing').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Герметизация").inputDecoration(),
              formControlName: 'sealing',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            ReactiveFormConsumer(
              builder: (buildContext, form, child) {
                return TextButton(
                  child: Text('Расчитать позиции',
                      style: theme.textTheme.titleLarge),
                  onPressed: () async {
                    setState(() {});
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
