import 'client.dart';
import 'clients_example.dart';

class MaterialPrice {

  static double GetPrice(String material) {
    switch (material) {
      case "Пвх панель (Горизонтально)":
        return 1700;
      case "Пвх панель (Вертикально)":
        return 1700;
      case "Ламинат 33кл (Горизонтально)":
        return 4200;
      case "Ламинат 33кл (Вертикально)":
        return 4200;
      case "Мдф панель (Горизонтально)":
        return 1700;
      case "Мдф панель (Вертикально)":
        return 1700;
      case "декор рейка (Горизонтально)":
        return 11200;
      case "декор рейка (Вертикально)":
        return 11200;
      case "Вагонка штиль Б (Горизонтально)":
        return 2350;
      case "Вагонка штиль Б (Вертикально)":
        return 2350;
      case "Вагонка штиль А (Горизонтально)":
        return 2650;
      case "Вагонка штиль А (Вертикально)":
        return 2650;
      case "ГКЛВ 2 слоя":
        return 3640;
      case "ГКЛВ + Шпаклевка под покраску":
        return 5500;
      case "ГКЛВ+ декор.штукатурка":
        return 6290;
      case "Натяжной Белый":
        return 2100;
      case "Стеновой паркет Экстра":
        return 3400;
      case "Стеновой паркет АБ":
        return 3100;
      case "Свой ПВХ или МДФ":
        return 1200;
      case "Своя Вагонка":
        return 1400;
      case "Свой Ламинат":
        return 2100;
      case "свои ПВХ ПАНЕЛИ":
        return 1200;
      case "Без покрытия":
        return 0;
      case "Доска А":
        return 3550;
      case "Доска B":
        return 3120;
      case "OSB":
        return 3300;
      case "Фанера":
        return 3500;
      case "свое":
        return 1800;
      case "Стяжка":
        return 4950;
      case "Ламинат 33кл (Горизонтально)":
        return 4200;
      case "Ламинат 33кл (Вертикально)":
        return 4200;
      case "Линолеум":
        return 1800;
      case "Раб. Керамогранит":
        return 2300;
      case "Свой линолеум":
        return 1200;
      case "Свой Ламинат":
        return 1600;
      case "МДФ Панель":
        return 1700;
      case "ПВХ панель (белая)":
        return 1700;
      case "Ламинат 33кл":
        return 4200;
      case "Стеновой паркет Экстра":
        return 3400;
      case "Стеновой паркет АБ":
        return 3100;
      case "Вагонка штиль Б":
        return 2350;
      case "Вагонка штиль А":
        return 2650;
      case "Декор. штукатурка":
        return 4900;
      case "ГКЛВ":
        return 1820;
      case "ГКЛВ 2 слоя":
        return 3640;
      case "ГКЛВ + Шпаклевка под покраску":
        return 5500;
      case "ГКЛВ+ декор.штукатурка":
        return 6720;
      case "ГКЛВ + раб.плитка":
        return 5100;
      case "Декор. Рейка":
        return 11200;
      case "свое покрытие":
        return 1400;
      case "БФК Белый 250":
        return 1250;
      case "БФК Белый 500":
        return 1450;
      case "Данке Комфорт 200":
        return 2220;
      case "Данке Комфорт 250":
        return 2775;
      case "Данке Комфорт 300":
        return 3330;
      case "Данке Комфорт 350":
        return 3885;
      case "Данке Комфорт 400":
        return 4440;
      case "Данке Комфорт 450":
        return 4995;
      case "Данке Комфорт 500":
        return 5550;
      case "Данке Комфорт 550":
        return 6105;
      case "Данке Комфорт 600":
        return 6660;
      case "Данке Комфорт 700":
        return 7770;
      case "Данке Premium 200":
        return 4500;
      case "Данке Premium 250":
        return 5625;
      case "Данке Premium 300":
        return 6750;
      case "Данке Premium 350":
        return 7875;
      case "Данке Premium 400":
        return 9000;
      case "Данке Premium 450":
        return 10125;
      case "Данке Premium 500":
        return 11250;
      case "Данке Premium 550":
        return 12375;
      case "Данке Premium 600":
        return 13500;
      case "Данке Premium 700":
        return 15750;
      case "Кристаллит 200":
        return 4110;
      case "Кристаллит 250":
        return 5137.5;
      case "Кристаллит 300":
        return 6165;
      case "Кристаллит 300 Белый дуб":
        return 6165;
      case "Кристаллит 300 Натуральный дуб":
        return 6165;
      case "Кристаллит 300 Антрацит":
        return 6165;
      case "Кристаллит 300 Альпийский шифер":
        return 6165;
      case "Кристаллит 300 Ультрамат( Черный)":
        return 6165;
      case "Кристаллит 350":
        return 7192.5;
      case "Кристаллит 400":
        return 8220;
      case "Кристаллит 500":
        return 10275;
      case "Кристаллит 600":
        return 12330;
      case "Кристаллит 600  Белый дуб,":
        return 12330;
      case "Кристаллит 600 Натуральный дуб,":
        return 12330;
      case "Кристаллит 600 Антрацит,":
        return 12330;
      case "Кристаллит 600 Альпийский шифер,":
        return 12330;
      case "Кристаллит 600  Ультрамат( Черный)":
        return 12330;
      case "Ламинат":
        return 3200;
      case "работа Керамогранит":
        return 4300;
      case "Порог в уровень с полом":
        return 1000;
      case "Сэндвич панель":
        return 1350;
      case "ПВХ панель":
        return 1140;
      case "Ламинат 33кл":
        return 3120;
      case "Вагонка Штиль А":
        return 2350;
      case "Вагонка Штиль Б":
        return 2650;
      case "Стеновой паркет АБ":
        return 3100;
      case "Стеновой паркет Экстра":
        return 3400;
      case "ламинат свой":
        return 1700;
      case "ГЛКВ":
        return 1820;
      case "Откосы Кристаллит до 350":
        return 5085;
      case "Откосы Кристаллит до 700":
        return 9970;
      case "Инфракрасный":
        return 2750;
      case "Саморегулируемый":
        return 3800;
      case "Теновый":
        return 4900;
      case "нет":
        return 0;
      case "Запил под 45":
        return 2450;
      case "Уголок":
        return 190;
      case "F-профиль":
        return 95;
      case "F-пр Кристаллит":
        return 900;
      case "Tikkurila 0,9л -7м2":
        return 5300;
      case "Tikkurila 2,7л -23м2":
        return 7800;
      case "Tikkurila 9л - 81м2":
        return 15200;
      case "Dulux 0,9л - 7м2":
        return 3300;
      case "Dulux 2,7л - 23м2":
        return 5800;
      case "Dulux 9л - 81м2":
        return 10000;
      case "без покраски":
        return 0;
      case "Плинтус ПВХ":
        return 360;
      case "Плинтус Галтель":
        return 260;
      case "Скрытый плинтус":
        return 800;
      case "Плинтус МДФ под покраску":
        return 960;
      case "механический встраиваемый":
        return 2025;
      case "Программируемый встраиваем.":
        return 5600;
      case "Програм. сенсорный встраиваем.":
        return 6650;
      case "Механический Наружный":
        return 2750;
      case "Программируемый Наружный":
        return 6100;
      case "Програм. сенсорный Наружный":
        return 7150;
      case "Покраска с Двух сторон 3 слоя":
        return 1600;
      case "Покраска 3 слоя(валик,кисть)":
        return 890;
      case "Покраска 2 слоя(краскопульт)":
        return 1190;
      case "Покраска 3слоя(краскопульт)":
        return 1390;
      case "шкаф из вагонки сплошные дверцы":
        return 7600;
      case "шкаф из ЛДСП жалюзийные дверцы под заказ":
        return 12100;
      case "жалюзийные дверки":
        return 8900;
      case "шкаф из ЛДСП под заказ":
        return 9700;
      case "ПВХ дверки":
        return 10100;
      case "AL (купе)":
        return 7300;
      case "Данке Комфорт 500":
        return 5550;
      case "Данке Комфорт 700":
        return 7770;
      case "Данке Premium 500":
        return 11250;
      case "Данке Premium 700":
        return 15750;
      case "Кристаллит 600":
        return 123300;
      case "ЛДСП Столешница":
        return 7500;
      case 'floorRaising':
        return 100;
      case 'startProfile':
        return 65;
      case 'skirtingRailings':
        return 250;
      case 'angles':
        return 320;
      case 'clothesDryer':
        return 6450;
      case 'penoplex50':
        return 1250;
      case 'penoplex20':
        return 1150;
      case 'insolationPPU' :
        return 2850;
      case 'ecofol05':
        return 650;
      case 'sealing':
        return 250;
      case 'distributionBox':
        return 1500;
      case 'connectingPoints':
        return 950;
      case 'warmFloorConecting':
        return 2800;
      case 'cleaning':
        return 1900;
      case 'priming':
        return 250;

    }
    return 0;
  }
}
