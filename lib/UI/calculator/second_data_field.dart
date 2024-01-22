import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'railings_logic.dart';
import 'param_alert.dart';
import 'package:smeta/decoration/input_decoration.dart';
import 'ceiling_logic.dart';
import 'second_data_logic.dart';
import 'railing_alert.dart';
import 'check_tile.dart';
import 'package:smeta/models/client.dart';
import 'material_drop_down.dart';
import 'field_tile.dart';

class SecondDataField extends StatefulWidget {
  Client client;

  SecondDataField(this.client);

  @override
  State<SecondDataField> createState() => _SecondDataFieldState();
}

class _SecondDataFieldState extends State<SecondDataField> {
  CustomInputDecoration nameDecoration = CustomInputDecoration(hintText: "ФИО");

  CustomInputDecoration inputDecoration =
      CustomInputDecoration(hintText: "Пароль");

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var sSize = MediaQuery.of(context);
    return ReactiveFormBuilder(
      form: () => SecondDataLogic.form,
      builder: (context, form, child) {
        if (widget.client.ceiling != -1)
          form.control('ceiling').value = widget.client.ceiling;
        if (widget.client.ceiling != -1)
          form.control('ceiling').value = widget.client.ceiling;
        if (widget.client.floor != -1)
          form.control('floor').value = widget.client.floor;
        if (widget.client.floorRaising != -1)
          form.control('floorRaising').value = widget.client.floorRaising;
        if (widget.client.floorOverlap != -1)
          form.control('floorOverlap').value = widget.client.floorOverlap;
        if (widget.client.front != -1)
          form.control('front').value = widget.client.front;
        if (widget.client.slopes != -1)
          form.control('slopes').value = widget.client.slopes;
        if (widget.client.f_profile != -1)
          form.control('f_profile').value = widget.client.f_profile;
        if (widget.client.startProfile != -1)
          form.control('startProfile').value = widget.client.startProfile;
        if (widget.client.leftWall != -1)
          form.control('leftWall').value = widget.client.leftWall;
        if (widget.client.rightWall != -1)
          form.control('rightWall').value = widget.client.rightWall;
        if (widget.client.column != -1)
          form.control('column').value = widget.client.column;
        if (widget.client.railings != -1)
          form.control('railings').value = widget.client.railings;
        if (widget.client.skirtingRailings != -1)
          form.control('skirtingRailings').value =
              widget.client.skirtingRailings;
        if (widget.client.baseboard != -1)
          form.control('baseboard').value = widget.client.baseboard;
        if (widget.client.angles != -1)
          form.control('angles').value = widget.client.angles;
        if (widget.client.windowsill != -1)
          form.control('windowsill').value = widget.client.windowsill;
        if (widget.client.windowsillWithGlass != -1)
          form.control('windowsillWithGlass').value =
              widget.client.windowsillWithGlass;
        if (widget.client.sillSheathing != -1)
          form.control('sillSheathing').value = widget.client.sillSheathing;
        if (widget.client.table != -1)
          form.control('table').value = widget.client.table;
          form.control('clothesDryerCeiling').value = widget.client.clothesDryerCeiling;
          form.control('clothesDryerWall').value = widget.client.clothesDryerWall;

        form.markAllAsTouched();
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FieldTileWithMaterial.withOnTap(
                4.2,
                sSize,
                'ceiling',
                "Потолок",
                theme,
                form,
                MaterialDropDown([
                  'Пвх панель (Горизонтально)',
                  'Пвх панель (Вертикально)',
                  'Ламинат 33кл (Горизонтально)',
                  'Ламинат 33кл (Вертикально)',
                  'Мдф панель (Горизонтально)',
                  'Мдф панель (Вертикально)',
                  'декор рейка (Горизонтально)',
                  'декор рейка (Вертикально)',
                  'Вагонка штиль Б (Горизонтально)',
                  'Вагонка штиль Б (Вертикально)',
                  'Вагонка штиль А (Горизонтально)',
                  'Вагонка штиль А (Вертикально)',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'Натяжной Белый',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Свой ПВХ или МДФ',
                  'Своя Вагонка',
                  'Свой Ламинат',
                  'свои ПВХ ПАНЕЛИ',
                  'Без покрытия'
                ], (_) {
                  widget.client.ceilingMaterial =
                      form.control('ceilingMaterial').value;
                },
                    'ceilingMaterial',
                    widget.client.ceilingMaterial == ""
                        ? 'Материал'
                        : widget.client.ceilingMaterial),
                widget.client.ceilingMaterial, (_) {
              widget.client.ceiling = form.control('ceiling').value;
            }, (_) {
              ParametrAlert.ShowParamAlert(widget.client, context, theme.primaryColor, form,
                  theme.textTheme.titleLarge, CeilingLogic.form, 'ceiling');
            }),
            FieldTileWithMaterial.withOnTap(
              4.2,
              sSize,
              'floor',
              "Пол",
              theme,
              form,
              MaterialDropDown([
                'Доска А',
                'Доска B',
                'OSB',
                'Фанера',
                'свое',
                'Стяжка',
                'Без покрытия',
              ], (_) {
                widget.client.floorMaterial =
                    form.control('floorMaterial').value;
              },
                  'floorMaterial',
                  widget.client.floorMaterial == ""
                      ? 'Материал'
                      : widget.client.floorMaterial),
              widget.client.floorMaterial,
              (_) {
                widget.client.floor = form.control('floor').value;
              },
              (_) {
                ParametrAlert.ShowParamAlert(widget.client, context, theme.primaryColor, form,
                    theme.textTheme.titleLarge, CeilingLogic.form, "floor");
              },
            ),
            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2.7,
                  child: ReactiveTextField(
                    onChanged: (_) {
                      client.floor = form.control('floor').value;
                    },
                    onTap: (_) {
                      ParametrAlert.ShowParamAlert(
                          context,
                          theme.primaryColor,
                          form,
                          theme.textTheme.titleLarge,
                          CeilingLogic.form,
                          "floor");
                    },
                    cursorColor: theme.primaryColor,
                    decoration: CustomInputDecoration(hintText: "Пол")
                        .inputDecoration(),
                    formControlName: 'floor',
                    validationMessages: {
                      'required': (error) => 'Обязательное поле'
                    },
                  ),
                ),
                MaterialDropDown([
                  'Доска А',
                  'Доска B'
                      'OSB',
                  'Фанера',
                  'свое',
                  'Стяжка',
                  'Без покрытия',
                ], (_) {
                  client.floorMaterial = form.control('floorMaterial').value;
                },
                    'floorMaterial',
                    client.floorMaterial == ""
                        ? 'Материал'
                        : client.floorMaterial),
              ],
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'floorRaising', "Поднятие пола",
                theme, form, Container(), "", (_) {
              widget.client.floorRaising = form.control('floorRaising').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.floorRaising = form.control('floorRaising').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Поднятие пола")
                  .inputDecoration(),
              formControlName: 'floorRaising',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'floorOverlap',
                "Покрытие пола",
                theme,
                form,
                MaterialDropDown([
                  'Ламинат 33кл (Горизонтально)',
                  'Ламинат 33кл (Вертикально)',
                  'Линолеум',
                  'Раб. Керамогранит',
                  'Свой линолеум',
                  'Свой Ламинат',
                  'Без покрытия'
                ], (_) {
                  widget.client.floorOverlapMaterial =
                      form.control('floorOverlapMaterial').value;
                },
                    'floorOverlapMaterial',
                    widget.client.floorOverlapMaterial == ""
                        ? 'Материал'
                        : widget.client.floorOverlapMaterial),
                widget.client.floorOverlapMaterial, (_) {
              widget.client.floorOverlap = form.control('floorOverlap').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 2.7,
                  child: ReactiveTextField(
                    onChanged: (_) {
                      client.floorOverlap = form.control('floorOverlap').value;
                    },
                    cursorColor: theme.primaryColor,
                    decoration: CustomInputDecoration(hintText: "Покрытие пола")
                        .inputDecoration(),
                    formControlName: 'floorOverlap',
                    validationMessages: {
                      'required': (error) => 'Обязательное поле'
                    },
                  ),
                ),
                MaterialDropDown([
                  'Ламинат 33кл (Горизонтально)',
                  'Ламинат 33кл (Вертикально)',
                  'Линолеум',
                  'Раб. Керамогранит',
                  'Свой линолеум',
                  'Свой Ламинат',
                  'Без покрытия'
                ], (_) {
                  client.floorOverlapMaterial =
                      form.control('floorOverlapMaterial').value;
                },
                    'floorOverlapMaterial',
                    client.floorOverlapMaterial == ""
                        ? 'Материал'
                        : client.floorOverlapMaterial)
              ],
            ),*/
            FieldTileWithMaterial.withOnTap(
                4.2, sSize, 'front', "Фасад", theme, form, MaterialDropDown([
        'МДФ Панель',
        'ПВХ панель (белая)',
        'Ламинат 33кл',
        'Стеновой паркет Экстра',
        'Стеновой паркет АБ',
        'Вагонка штиль Б',
        'Вагонка штиль А',
        'Декор. штукатурка',
        'ГКЛВ',
        'ГКЛВ 2 слоя',
        'ГКЛВ + Шпаклевка под покраску',
        'ГКЛВ+ декор.штукатурка',
        'ГКЛВ + раб.плитка',
        'Декор. Рейка',
        'свое покрытие',
        'Без покрытия'
        ], (_) {
        widget.client.frontMaterial =
        form.control('frontMaterial').value;
        },
        'frontMaterial',
        widget.client.frontMaterial == ""
        ? 'Материал'
            : widget.client.frontMaterial), "",
                (_) {
              widget.client.front = form.control('front').value;
            }, (_) {
              FrontAlert.ShowFrontAlert(widget.client, context, theme.primaryColor, form,
                  theme.textTheme.titleLarge, RailingsLogic.form, 'front');
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.front = form.control('front').value;
              },
              onTap: (_) {
                FrontAlert.ShowFrontAlert(context, theme.primaryColor, form,
                    theme.textTheme.titleLarge, RailingsLogic.form, 'front');
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Фасад").inputDecoration(),
              formControlName: 'front',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'slopes',
                "Откосы",
                theme,
                form,
                MaterialDropDown([
                  'Сэндвич панель',
                  'ПВХ панель',
                  'Ламинат 33кл',
                  'Вагонка Штиль А',
                  'Вагонка Штиль Б',
                  'Стеновой паркет АБ',
                  'Стеновой паркет Экстра',
                  'ламинат свой',
                  'ГЛКВ',
                  'Откосы Кристаллит до 350',
                  'Откосы Кристаллит до 700'
                ], (_) {
                  widget.client.slopesMaterial =
                      form.control('slopesMaterial').value;
                },
                    'slopesMaterial',
                    widget.client.slopesMaterial == ""
                        ? 'Материал'
                        : widget.client.slopesMaterial),
                widget.client.slopesMaterial, (_) {
              widget.client.slopes = form.control('slopes').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.slopes = form.control('slopes').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Откосы")
                          .inputDecoration(),
                      formControlName: 'slopes',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'Сэндвич панель',
                  'ПВХ панель',
                  'Ламинат 33кл',
                  'Вагонка Штиль А',
                  'Вагонка Штиль Б',
                  'Стеновой паркет АБ',
                  'Стеновой паркет Экстра',
                  'ламинат свой',
                  'ГЛКВ',
                  'Откосы Кристаллит до 350',
                  'Откосы Кристаллит до 700'
                ], (_) {
                  client.slopesMaterial = form.control('slopesMaterial').value;
                },
                    'slopesMaterial',
                    client.slopesMaterial == ""
                        ? 'Материал'
                        : client.slopesMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'f_profile',
                "f-профиль",
                theme,
                form,
                MaterialDropDown(
                    ['Запил под 45', 'Уголок', 'F-профиль', 'F-пр Кристаллит'],
                    (_) {
                  widget.client.f_profileMaterial =
                      form.control('f_profileMaterial').value;
                },
                    'f_profileMaterial',
                    widget.client.f_profileMaterial == ""
                        ? 'Материал'
                        : widget.client.f_profileMaterial),
                widget.client.f_profileMaterial, (_) {
              widget.client.f_profile = form.control('f_profile').value;
            }),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.f_profile = form.control('f_profile').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "F-профиль")
                          .inputDecoration(),
                      formControlName: 'f_profile',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown(
                    ['Запил под 45', 'Уголок', 'F-профиль', 'F-пр Кристаллит'],
                    (_) {
                  client.f_profileMaterial =
                      form.control('f_profileMaterial').value;
                },
                    'f_profileMaterial',
                    client.f_profileMaterial == ""
                        ? 'Материал'
                        : client.f_profileMaterial)
              ],
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'startProfile',
                "Стартовый профиль", theme, form, Container(), '', (_) {
              widget.client.startProfile = form.control('startProfile').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.startProfile = form.control('startProfile').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Стартовый профиль")
                  .inputDecoration(),
              formControlName: 'startProfile',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial.withOnTap(
                4.2,
                sSize,
                'leftWall',
                "Левая стена",
                theme,
                form,
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  widget.client.leftWallMaterial =
                      form.control('leftWallMaterial').value;
                },
                    'leftWallMaterial',
                    widget.client.leftWallMaterial == ""
                        ? 'Материал'
                        : widget.client.leftWallMaterial),
                widget.client.leftWallMaterial, (_) {
              widget.client.leftWall = form.control('leftWall').value;
            }, (_) {
              ParametrAlert.ShowParamAlert(widget.client, context, theme.primaryColor, form,
                  theme.textTheme.titleLarge, CeilingLogic.form, 'leftWall');
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.leftWall = form.control('leftWall').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Левая стена")
                          .inputDecoration(),
                      formControlName: 'leftWall',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  client.leftWallMaterial =
                      form.control('leftWallMaterial').value;
                },
                    'leftWallMaterial',
                    client.leftWallMaterial == ""
                        ? 'Материал'
                        : client.leftWallMaterial)
              ],
            ),*/
            FieldTileWithMaterial.withOnTap(
                4.2,
                sSize,
                'rightWall',
                "Правая стена",
                theme,
                form,
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  widget.client.rightWallMaterial =
                      form.control('rightWallMaterial').value;
                },
                    'rightWallMaterial',
                    widget.client.rightWallMaterial == ""
                        ? 'Материал'
                        : widget.client.rightWallMaterial),
                widget.client.rightWallMaterial, (_) {
              widget.client.rightWall = form.control('rightWall').value;
            }, (_) {
              ParametrAlert.ShowParamAlert(widget.client, context, theme.primaryColor, form,
                  theme.textTheme.titleLarge, CeilingLogic.form, 'rightWall');
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.rightWall = form.control('rightWall').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration:
                          CustomInputDecoration(hintText: "Правая стена")
                              .inputDecoration(),
                      formControlName: 'rightWall',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  client.rightWallMaterial =
                      form.control('rightWallMaterial').value;
                },
                    'rightWallMaterial',
                    client.rightWallMaterial == ""
                        ? 'Материал'
                        : client.rightWallMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'column',
                "Колонны",
                theme,
                form,
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  widget.client.columnMaterial =
                      form.control('columnMaterial').value;
                },
                    'columnMaterial',
                    widget.client.columnMaterial == ""
                        ? 'Материал'
                        : widget.client.columnMaterial),
                widget.client.columnMaterial, (_) {
              widget.client.column = form.control('column').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.column = form.control('column').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Колонны")
                          .inputDecoration(),
                      formControlName: 'column',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  client.columnMaterial = form.control('columnMaterial').value;
                },
                    'columnMaterial',
                    client.columnMaterial == ""
                        ? 'Материал'
                        : client.columnMaterial)
              ],
            ),*/

            FieldTileWithMaterial.withOnTap(
                4.2,
                sSize,
                'railings',
                "Перила",
                theme,
                form,
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  widget.client.railingsMaterial =
                      form.control('railingsMaterial').value;
                },
                    'railingsMaterial',
                    widget.client.railingsMaterial == ""
                        ? 'Материал'
                        : widget.client.railingsMaterial),
                widget.client.railingsMaterial, (_) {
              widget.client.railings = form.control('railings').value;
            }, (_) {
              ParametrAlert.ShowParamAlert(widget.client, context, theme.primaryColor, form,
                  theme.textTheme.titleLarge, CeilingLogic.form, 'railings');
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.railings = form.control('railings').value;
                      },
                      onTap: (_) {
                        ParametrAlert.ShowParamAlert(
                            context,
                            theme.primaryColor,
                            form,
                            theme.textTheme.titleLarge,
                            CeilingLogic.form,
                            'railings');
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Перила")
                          .inputDecoration(),
                      formControlName: 'railings',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'МДФ Панель',
                  'ПВХ панель (белая)',
                  'Ламинат 33кл',
                  'Стеновой паркет Экстра',
                  'Стеновой паркет АБ',
                  'Вагонка штиль Б',
                  'Вагонка штиль А',
                  'Декор. штукатурка',
                  'ГКЛВ',
                  'ГКЛВ 2 слоя',
                  'ГКЛВ + Шпаклевка под покраску',
                  'ГКЛВ+ декор.штукатурка',
                  'ГКЛВ + раб.плитка',
                  'Декор. Рейка',
                  'свое покрытие',
                  'Без покрытия'
                ], (_) {
                  client.railingsMaterial =
                      form.control('railingsMaterial').value;
                },
                    'railingsMaterial',
                    client.railingsMaterial == ""
                        ? 'Материал'
                        : client.railingsMaterial)
              ],
            ),*/
            FieldTileWithMaterial(1.8, sSize, 'skirtingRailings',
                "Обводы перил", theme, form, Container(), "", (_) {
              widget.client.skirtingRailings =
                  form.control('skirtingRailings').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.skirtingRailings =
                    form.control('skirtingRailings').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Обводы перил")
                  .inputDecoration(),
              formControlName: 'skirtingRailings',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'baseboard',
                "Плинтус",
                theme,
                form,
                MaterialDropDown([
                  'Плинтус ПВХ',
                  'Плинтус Галтель',
                  'Скрытый плинтус',
                  'Плинтус МДФ под покраску'
                ], (_) {
                  widget.client.baseboardMaterial =
                      form.control('baseboardMaterial').value;
                },
                    'baseboardMaterial',
                    widget.client.baseboardMaterial == ""
                        ? 'Материал'
                        : widget.client.baseboardMaterial),
                widget.client.baseboardMaterial, (_) {
              widget.client.baseboard = form.control('baseboard').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.baseboard = form.control('baseboard').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Плинтус")
                          .inputDecoration(),
                      formControlName: 'baseboard',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'Плинтус ПВХ',
                  'Плинтус Галтель',
                  'Скрытый плинтус',
                  'Плинтус МДФ под покраску'
                ], (_) {
                  client.baseboardMaterial =
                      form.control('baseboardMaterial').value;
                },
                    'baseboardMaterial',
                    client.baseboardMaterial == ""
                        ? 'Материал'
                        : client.baseboardMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                1.8, sSize, 'angles', "Уголки", theme, form, Container(), "",
                (_) {
              widget.client.angles = form.control('angles').value;
            }),
            /*ReactiveTextField(
              onChanged: (_) {
                client.angles = form.control('angles').value;
              },
              cursorColor: theme.primaryColor,
              decoration:
                  CustomInputDecoration(hintText: "Уголки").inputDecoration(),
              formControlName: 'angles',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'windowsill',
                "Подоконник",
                theme,
                form,
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  widget.client.windowsillMaterial =
                      form.control('windowsillMaterial').value;
                },
                    'windowsillMaterial',
                    widget.client.windowsillMaterial == ""
                        ? 'Материал'
                        : widget.client.windowsillMaterial),
                widget.client.windowsillMaterial, (_) {
              widget.client.windowsill = form.control('windowsill').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.windowsill = form.control('windowsill').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Подоконник")
                          .inputDecoration(),
                      formControlName: 'windowsill',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  client.windowsillMaterial =
                      form.control('windowsillMaterial').value;
                },
                    'windowsillMaterial',
                    client.windowsillMaterial == ""
                        ? 'Материал'
                        : client.windowsillMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'windowsillWithGlass',
                "Подоконник под остекление",
                theme,
                form,
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  widget.client.windowsillWithGlassMaterial =
                      form.control('windowsillWithGlassMaterial').value;
                },
                    'windowsillWithGlassMaterial',
                    widget.client.windowsillWithGlassMaterial == ""
                        ? 'Материал'
                        : widget.client.windowsillWithGlassMaterial),
                widget.client.windowsillWithGlassMaterial, (_) {
              widget.client.windowsillWithGlass =
                  form.control('windowsillWithGlass').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.windowsillWithGlass =
                            form.control('windowsillWithGlass').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(
                              hintText: "Подоконник под остекление")
                          .inputDecoration(),
                      formControlName: 'windowsillWithGlass',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  client.windowsillWithGlassMaterial =
                      form.control('windowsillWithGlassMaterial').value;
                },
                    'windowsillWithGlassMaterial',
                    client.windowsillWithGlassMaterial == ""
                        ? 'Материал'
                        : client.windowsillWithGlassMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'sillSheathing',
                "Обшивка порога",
                theme,
                form,
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  widget.client.sillSheathingMaterial =
                      form.control('sillSheathingMaterial').value;
                },
                    'sillSheathingMaterial',
                    widget.client.sillSheathingMaterial == ""
                        ? 'Материал'
                        : widget.client.sillSheathingMaterial),
                widget.client.sillSheathingMaterial, (_) {
              widget.client.sillSheathing = form.control('sillSheathing').value;
            }),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.sillSheathing =
                            form.control('sillSheathing').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration:
                          CustomInputDecoration(hintText: "Обшивка порога")
                              .inputDecoration(),
                      formControlName: 'sillSheathing',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'БФК Белый 250',
                  'БФК Белый 500',
                  'Данке Комфорт 200',
                  'Данке Комфорт 250',
                  'Данке Комфорт 300',
                  'Данке Комфорт 350',
                  'Данке Комфорт 400',
                  'Данке Комфорт 450',
                  'Данке Комфорт 500',
                  'Данке Комфорт 550',
                  'Данке Комфорт 600',
                  'Данке Комфорт 700',
                  'Данке Premium 200',
                  'Данке Premium 250',
                  'Данке Premium 300',
                  'Данке Premium 350',
                  'Данке Premium 400',
                  'Данке Premium 450',
                  'Данке Premium 500',
                  'Данке Premium 550',
                  'Данке Premium 600',
                  'Данке Premium 700',
                  'Кристаллит 200',
                  'Кристаллит 250',
                  'Кристаллит 300',
                  'Кристаллит 300 Белый дуб',
                  'Кристаллит 300 Натуральный дуб',
                  'Кристаллит 300 Антрацит',
                  'Кристаллит 300 Альпийский шифер',
                  'Кристаллит 300 Ультрамат( Черный)',
                  'Кристаллит 350',
                  'Кристаллит 400',
                  'Кристаллит 500',
                  'Кристаллит 600',
                  'Кристаллит 600  Белый дуб',
                  'Кристаллит 600 Натуральный дуб',
                  'Кристаллит 600 Антрацит',
                  'Кристаллит 600 Альпийский шифер',
                  'Кристаллит 600  Ультрамат( Черный)',
                  'Ламинат',
                  'работа Керамогранит',
                  'Порог в уровень с полом'
                ], (_) {
                  client.sillSheathingMaterial =
                      form.control('sillSheathingMaterial').value;
                },
                    'sillSheathingMaterial',
                    client.sillSheathingMaterial == ""
                        ? 'Материал'
                        : client.sillSheathingMaterial)
              ],
            ),*/
            FieldTileWithMaterial(
                4.2,
                sSize,
                'table',
                "Столешница",
                theme,
                form,
                MaterialDropDown([
                  'Данке Комфорт 500',
                  'Данке Комфорт 700',
                  'Данке Premium 500',
                  'Данке Premium 700',
                  'Кристаллит 600',
                  'ЛДСП Столешница',
                  'нет'
                ], (_) {
                  widget.client.tableMaterial =
                      form.control('tableMaterial').value;
                },
                    'tableMaterial',
                    widget.client.tableMaterial == ""
                        ? 'Материал'
                        : widget.client.tableMaterial),
                widget.client.tableMaterial, (_) {
              widget.client.table = form.control('table').value;
            }),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width / 2.7,
                    child: ReactiveTextField(
                      onChanged: (_) {
                        client.table = form.control('table').value;
                      },
                      cursorColor: theme.primaryColor,
                      decoration: CustomInputDecoration(hintText: "Столешница")
                          .inputDecoration(),
                      formControlName: 'table',
                      validationMessages: {
                        'required': (error) => 'Обязательное поле'
                      },
                    )),
                MaterialDropDown([
                  'Данке Комфорт 500',
                  'Данке Комфорт 700',
                  'Данке Premium 500',
                  'Данке Premium 700',
                  'Кристаллит 600',
                  'ЛДСП Столешница',
                  'нет'
                ], (_) {
                  client.tableMaterial = form.control('tableMaterial').value;
                },
                    'tableMaterial',
                    client.tableMaterial == ""
                        ? 'Материал'
                        : client.tableMaterial)
              ],
            ),*/
            /*FieldTileWithMaterial(1.8, sSize, 'clothesDryer',
                "Сушилка для белья", theme, form, Container(), "", (_) {
              widget.client.clothesDryer = form.control('clothesDryer').value;
            }),*/
            /*ReactiveTextField(
              onChanged: (_) {
                client.clothesDryer = form.control('clothesDryer').value;
              },
              cursorColor: theme.primaryColor,
              decoration: CustomInputDecoration(hintText: "Сушилка для белья")
                  .inputDecoration(),
              formControlName: 'clothesDryer',
              validationMessages: {'required': (error) => 'Обязательное поле'},
            ),*/
            CheckTile(
                        (_) => widget.client.clothesDryerWall =
                            form.control('clothesDryerWall').value,
                        'Сушилка настенная',
                        'clothesDryerWall'),

                CheckTile(
                            (_) => widget.client.clothesDryerCeiling =
                            form.control('clothesDryerCeiling').value,
                        'Сушилка потолочная',
                        'clothesDryerCeiling'),

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
