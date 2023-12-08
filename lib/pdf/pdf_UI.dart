import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'dart:ui';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../models/calculate.dart';
import 'table_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smeta/models/client.dart';
import 'package:smeta/models/materials.dart';

class OrderPDF {
  final pdf = pw.Document();

  Future<Uint8List> createPdfFile(Size size, Client client) async {
    final font = await rootBundle.load("assets/m.ttf");
    final ttf = Font.ttf(font);
    var style = pw.TextStyle(font: ttf, fontSize: 10);
    final img = await rootBundle.load('assets/arh-logo.jpg');
    final logoByte = img.buffer.asUint8List();
    pw.Image logo = pw.Image(pw.MemoryImage(logoByte));
    print(style.runtimeType);
    pdf.addPage(pw.MultiPage(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return <pw.Widget>[
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Container(height: 50),
                  pw.Text('Отделка Балкона/Лоджии', style: style),
                  pw.Text(
                      'Приложение №1 к договору №___________ от ___________',
                      style: style),
                ]),
            pw.Table(border: pw.TableBorder.all(), children: [
              pw.TableRow(children: [
                pw.Text('Адресс клиента', style: style),
                pw.Text('${client.address}', style: style),
              ]),
              pw.TableRow(children: [
                pw.Text('Предварительная дата монтажа', style: style),
                pw.Text('', style: style),
                pw.Text('Телефон', style: style),
                pw.Text('${client.number}', style: style),
              ]),
            ]),
            pw.Center(
                child: pw.Text('Отделка',
                    style: pw.TextStyle(font: style.font, fontSize: 20))),
            pw.Table(border: pw.TableBorder.all(), children: [
              pw.TableRow(children: [
                pw.Container(width: 10, child: pw.Text('№', style: style)),
                pw.Container(
                    width: 100, child: pw.Text('Позиция', style: style)),
                pw.Container(width: 20, child: pw.Text('Кол-во', style: style)),
                pw.Container(width: 10, child: pw.Text('Ед.изм', style: style)),
                pw.Container(
                    width: 100, child: pw.Text('Материал', style: style)),
                pw.Container(
                    width: 20, child: pw.Text('Цена за ед.', style: style)),
                pw.Container(width: 30, child: pw.Text('Цена', style: style))
              ]),
              TableTile.tile(
                  style,
                  1,
                  'Потолок',
                  client.ceiling,
                  'м2',
                  client.ceilingMaterial,
                  MaterialPrice.GetPrice(client.ceilingMaterial),
                  MaterialPrice.GetPrice(client.ceilingMaterial) *
                      client.ceiling),
              TableTile.tile(
                  style,
                  2,
                  'Пол',
                  client.floor,
                  'м2',
                  client.floorMaterial,
                  MaterialPrice.GetPrice(client.floorMaterial),
                  MaterialPrice.GetPrice(client.floorMaterial) * client.floor),
              TableTile.tile(
                  style,
                  3,
                  'Поднятие пола',
                  client.floorRaising,
                  'см',
                  '',
                  MaterialPrice.GetPrice('floorRaising'),
                  MaterialPrice.GetPrice('floorRaising') * client.floorRaising),
              TableTile.tile(
                  style,
                  4,
                  'Покрытие полв',
                  client.floorOverlap,
                  'м2',
                  client.floorOverlapMaterial,
                  MaterialPrice.GetPrice(client.floorOverlapMaterial),
                  MaterialPrice.GetPrice(client.floorOverlapMaterial) *
                      client.floorOverlap),
              TableTile.tile(
                  style,
                  5,
                  'Фасад',
                  client.front,
                  'м2',
                  client.frontMaterial,
                  MaterialPrice.GetPrice(client.frontMaterial),
                  MaterialPrice.GetPrice(client.frontMaterial) * client.front),
              TableTile.tile(
                  style,
                  6,
                  'Откосы',
                  client.slopes,
                  'п.м.',
                  client.slopesMaterial,
                  MaterialPrice.GetPrice(client.slopesMaterial),
                  MaterialPrice.GetPrice(client.slopesMaterial) *
                      client.slopes),
              TableTile.tile(
                  style,
                  7,
                  'Запил под 45/ Уголок/ F-профиль',
                  client.F_profile,
                  'п.м.',
                  client.F_profileMaterial,
                  MaterialPrice.GetPrice(client.F_profileMaterial),
                  MaterialPrice.GetPrice(client.F_profileMaterial) *
                      client.F_profile),
              TableTile.tile(
                  style,
                  8,
                  'Стартовый профиль на откосы',
                  client.startProfile,
                  'п.м.',
                  '',
                  MaterialPrice.GetPrice('floorRaising'),
                  MaterialPrice.GetPrice('floorRaising') * client.startProfile),
              TableTile.tile(
                  style,
                  9,
                  'Левая стена',
                  client.leftWall,
                  'м2',
                  client.leftWallMaterial,
                  MaterialPrice.GetPrice(client.leftWallMaterial),
                  MaterialPrice.GetPrice(client.leftWallMaterial) *
                      client.leftWall),
              TableTile.tile(
                  style,
                  10,
                  'Правая стена',
                  client.rightWall,
                  'м2',
                  client.rightWallMaterial,
                  MaterialPrice.GetPrice(client.rightWallMaterial),
                  MaterialPrice.GetPrice(client.rightWallMaterial) *
                      client.rightWall),
              TableTile.tile(
                  style,
                  11,
                  'Колонны',
                  client.column,
                  'м2',
                  client.columnMaterial,
                  MaterialPrice.GetPrice(client.columnMaterial),
                  MaterialPrice.GetPrice(client.columnMaterial) *
                      client.column),
              TableTile.tile(
                  style,
                  12,
                  'Перила(парапет)',
                  client.railings,
                  'м2',
                  client.railingsMaterial,
                  MaterialPrice.GetPrice(client.railingsMaterial),
                  MaterialPrice.GetPrice(client.railingsMaterial) *
                      client.railings),
              TableTile.tile(
                  style,
                  13,
                  'Обводы перил/углов',
                  client.skirtingRailings,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('skirtingRailings'),
                  MaterialPrice.GetPrice('skirtingRailings') *
                      client.skirtingRailings),
              TableTile.tile(
                  style,
                  14,
                  'Плинтус',
                  client.baseboard,
                  'п.м.',
                  client.baseboardMaterial,
                  MaterialPrice.GetPrice(client.baseboardMaterial),
                  MaterialPrice.GetPrice(client.baseboardMaterial) *
                      client.baseboard),
              TableTile.tile(
                  style,
                  15,
                  'Уголки',
                  client.angles,
                  'п.м.',
                  'angles',
                  MaterialPrice.GetPrice('angles'),
                  MaterialPrice.GetPrice('angles') * client.angles),
              TableTile.tile(
                  style,
                  16,
                  'Подоконник',
                  client.windowsill,
                  'п.м.',
                  client.windowsillMaterial,
                  MaterialPrice.GetPrice(client.windowsillMaterial),
                  MaterialPrice.GetPrice(client.windowsillMaterial) *
                      client.windowsill),
              TableTile.tile(
                  style,
                  17,
                  'Подоконник под остекление',
                  client.windowsillWithGlass,
                  'п.м.',
                  client.windowsillWithGlassMaterial,
                  MaterialPrice.GetPrice(client.windowsillWithGlassMaterial),
                  MaterialPrice.GetPrice(client.windowsillWithGlassMaterial) *
                      client.windowsillWithGlass),
              TableTile.tile(
                  style,
                  18,
                  'Обшивка порога',
                  client.sillSheathing,
                  'п.м.',
                  client.sillSheathingMaterial,
                  MaterialPrice.GetPrice(client.sillSheathingMaterial),
                  MaterialPrice.GetPrice(client.sillSheathingMaterial) *
                      client.sillSheathing),
              TableTile.tile(
                  style,
                  19,
                  'Столешница',
                  client.table,
                  'п.м.',
                  client.ceilingMaterial,
                  MaterialPrice.GetPrice(client.tableMaterial),
                  MaterialPrice.GetPrice(client.tableMaterial) * client.table),
              TableTile.tile(
                  style,
                  20,
                  'Сушилка настенная',
                  client.clothesDryerWall ? 1 : 0,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('clothesDryer'),
                  MaterialPrice.GetPrice('clothesDryer') *
                      (client.clothesDryerWall ? 1 : 0)),
              TableTile.tile(
                  style,
                  21,
                  'Сушилка потолочная',
                  client.clothesDryerCeiling ? 1 : 0,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('clothesDryer'),
                  MaterialPrice.GetPrice('clothesDryer') *
                      (client.clothesDryerCeiling ? 1 : 0)),
            ]),
            pw.Center(
                child: pw.Text('Утепление',
                    style: pw.TextStyle(font: style.font, fontSize: 20))),
            pw.Table(border: pw.TableBorder.all(), children: [
              TableTile.tile(
                  style,
                  22,
                  'Понеплекс 50',
                  client.penoplex50,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('penoplex50'),
                  MaterialPrice.GetPrice('penoplex50') * client.penoplex50),
              TableTile.tile(
                  style,
                  23,
                  'Пеноплекс 20',
                  client.penoplex20,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('penoplex20'),
                  MaterialPrice.GetPrice('penoplex20') * client.penoplex20),
              TableTile.tile(
                  style,
                  24,
                  'Утепление ППУ',
                  client.insolationPPU,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('insolationPPU'),
                  MaterialPrice.GetPrice('insolationPPU') *
                      client.insolationPPU),
              TableTile.tile(
                  style,
                  25,
                  'Экофол 0.5',
                  client.ecofol05,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('ecofol05'),
                  MaterialPrice.GetPrice('ecofol05') * client.ecofol05),
              TableTile.tile(
                  style,
                  26,
                  'Столешница',
                  client.sealing,
                  'п.м.',
                  '',
                  MaterialPrice.GetPrice('sealing'),
                  MaterialPrice.GetPrice('sealing') * client.sealing),
            ]),
            pw.Center(
                child: pw.Text('Покраска',
                    style: pw.TextStyle(font: style.font, fontSize: 20))),
            pw.Table(border: pw.TableBorder.all(), children: [
              TableTile.tile(
                  style,
                  27,
                  'Зачистка',
                  client.cleaning,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('cleaning'),
                  MaterialPrice.GetPrice('cleaning') * client.cleaning),
              TableTile.tile(
                  style,
                  28,
                  'Грунтовка',
                  client.priming,
                  'м2',
                  '',
                  MaterialPrice.GetPrice('priming'),
                  MaterialPrice.GetPrice('priming') * client.priming),
              TableTile.tile(
                  style,
                  29,
                  'Покраска 3 слоя',
                  client.coloring,
                  'м2',
                  client.coloringMaterial,
                  MaterialPrice.GetPrice(client.coloringMaterial),
                  MaterialPrice.GetPrice(client.coloringMaterial) *
                      client.coloring),
              TableTile.tile(
                  style,
                  30,
                  'Краска',
                  client.color,
                  'шт',
                  client.colorMaterial,
                  MaterialPrice.GetPrice(client.colorMaterial),
                  MaterialPrice.GetPrice(client.colorMaterial) * client.color),
            ]),
            pw.Center(
                child: pw.Text('Электроника',
                    style: pw.TextStyle(font: style.font, fontSize: 20))),
            pw.Table(border: pw.TableBorder.all(), children: [
              TableTile.tile(
                  style,
                  31,
                  'Вывод кабеля на балкон(подключение)',
                  client.cableOutput ? 1 : 0,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('cableOutput'),
                  MaterialPrice.GetPrice('cableOutput') *
                      (client.cableOutput ? 1 : 0)),
              TableTile.tile(
                  style,
                  32,
                  'Распределительная коробка',
                  client.distributionBox,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('distributionBox'),
                  MaterialPrice.GetPrice('distributionBox') *
                      client.distributionBox),
              TableTile.tile(
                  style,
                  33,
                  'Подключение точек',
                  client.connectingPoints,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('connectingPoints'),
                  MaterialPrice.GetPrice('connectingPoints') *
                      client.connectingPoints),
              TableTile.tile(
                  style,
                  34,
                  'Укладка кабеля в гофру',
                  client.cableLaying ? 1 : 0,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('cableLaying'),
                  MaterialPrice.GetPrice('cableLaying') *
                      (client.cableLaying ? 1 : 0)),
              TableTile.tile(
                  style,
                  35,
                  'Подключение теплого пола',
                  client.warmFloorConecting,
                  'шт',
                  '',
                  MaterialPrice.GetPrice('warmFloorConecting'),
                  MaterialPrice.GetPrice('warmFloorConecting') *
                      client.warmFloorConecting),
              TableTile.tile(
                  style,
                  36,
                  'Теплый пол',
                  client.warmFloor,
                  'м2',
                  '',
                  MaterialPrice.GetPrice(client.warmFloorMaterial),
                  MaterialPrice.GetPrice(client.warmFloorMaterial) *
                      client.warmFloor),
              TableTile.tile(
                  style,
                  37,
                  'Терморегулятор для теплого пола',
                  client.warmFloorController,
                  'шт',
                  '',
                  MaterialPrice.GetPrice(client.warmFloorControllerMaterial),
                  MaterialPrice.GetPrice(client.warmFloorControllerMaterial) *
                      client.warmFloorController),
            ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text(
                      'подпись заказчика: с комплектацией и конфигурацией ознакомлен и согласе',
                      style: style),
                  pw.Text('Подпись__________', style: style)
                ]),
            pw.Center(child: pw.Container(height: 50, child: logo)),
            pw.Container(height: 30),
            pw.Text(
                'Аванс_________ При начале монтажа___________ При окончании работ___________ Кредит____________',
                style: style),
            pw.Text(
                'Заказчик обязуется оплатить общую стоимость работ:            ${Calculation.Calculate(client)}',
                style: style),
            pw.Text(
                'Представитель исполнителя ___________________ произвел необходимые замеры в присутствии\nЗаказчика, согласовал с заказчиком необходимые размеры отделки балкона/лоджии,перечень и стоимость работ\nпо отделке балкона/лоджии, по срокам указанным в договоре, соответствуют требованиям Заказчика.', style: style),
            pw.Text(''
                'Заказчик согласен с выбранной конфигурацией,дизайном,тех. условиями,цветом и проч..\nСуть буквенно-цифровых обозначений, использованных при составлении заказа разьяснена.\n*В случае отказа от работ,указанных в данном заказ-наряде, Заказчик обязуется возместить\nИсполнителю неустойку в размере затраченной суммы на материалы необходимые для\nвыполнения данного заказа. В иных случаях сумма неустойки составляет 15% от общей суммы без учета скидки', style: style),
            pw.Container(height: 30),
            pw.Text(
              'Подписи сторон: с комплектацией и конфигурацией согласен', style: pw.TextStyle(font: style.font, fontSize: 15, fontWeight: pw.FontWeight.bold)
            ),
            pw.Center( child: pw.Text(
                'Подрядчик_____________                Заказчик_____________________________Подпись______________', style: pw.TextStyle(font: style.font, fontSize: 15, fontWeight: pw.FontWeight.bold)
            )),
            pw.Text(
                'ИП Левин Никита Владимирович', style: pw.TextStyle(font: style.font, fontSize: 15, fontWeight: pw.FontWeight.bold)
            ),
            pw.Text(
                'Тел: 8-999-466-5909', style: pw.TextStyle(font: style.font, fontSize: 15, fontWeight: pw.FontWeight.bold)
            ),
            pw.Text(
                'Монтажный отдел 380-70-05', style: pw.TextStyle(font: style.font, fontSize: 15, fontWeight: pw.FontWeight.bold)
            ),
            pw.Center(child: pw.Container(height: 50, child: logo)),

          ];
        }));
    return pdf.save();
  }
}
