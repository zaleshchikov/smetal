import 'client.dart';
import 'materials.dart';

class Calculation {
  static double Calculate(Client client) {

    return (client.ceiling * MaterialPrice.GetPrice(client.ceilingMaterial) +
        client.floor * MaterialPrice.GetPrice(client.floorMaterial) +
        client.floorRaising +
        100 * 1000 +
        client.floorOverlap *
            MaterialPrice.GetPrice(client.floorOverlapMaterial) +
        client.front * MaterialPrice.GetPrice(client.frontMaterial) +
        client.slopes * MaterialPrice.GetPrice(client.slopesMaterial) +
        client.F_profile * MaterialPrice.GetPrice(client.F_profileMaterial) +
        client.startProfile *
            MaterialPrice.GetPrice(client.startProfileMaterial) +
        client.ceiling * MaterialPrice.GetPrice(client.ceilingMaterial) +
        client.leftWall * MaterialPrice.GetPrice(client.leftWallMaterial) +
        client.rightWall * MaterialPrice.GetPrice(client.rightWallMaterial) +
        client.column * MaterialPrice.GetPrice(client.columnMaterial) +
        client.railings * MaterialPrice.GetPrice(client.railingsMaterial) +
        client.skirtingRailings * 250 +
        client.baseboard * MaterialPrice.GetPrice(client.baseboardMaterial) +
        client.angles * 320 +
        client.windowsill * MaterialPrice.GetPrice(client.windowsillMaterial) +
        client.windowsillWithGlass *
            MaterialPrice.GetPrice(client.windowsillWithGlassMaterial) +
        client.sillSheathing *
            MaterialPrice.GetPrice(client.sillSheathingMaterial) +
        client.ceiling * MaterialPrice.GetPrice(client.tableMaterial) +
        client.clothesDryer *
            MaterialPrice.GetPrice(client.clothesDryerMaterial) +
        client.penoplex50 * 1250 +
        client.penoplex20 * 1150 +
        client.insolationPPU * 2850 +
        client.ecofol05 * 650 +
        client.sealing * 250 +
        client.cleaning * 1900 +
        client.priming * 1100 +
        client.coloring * MaterialPrice.GetPrice(client.coloringMaterial) +
        client.color * MaterialPrice.GetPrice(client.colorMaterial) +
        (client.cableOutput ? 2800 : 0) +
        client.distributionBox * 1500 +
        client.connectingPoints * 950 +
        (client.cableLaying ? 1350 : 0) +
        client.warmFloorConecting * 2800 +
        client.warmFloor * MaterialPrice.GetPrice(client.warmFloorMaterial) +
        client.warmFloorController *
            MaterialPrice.GetPrice(client.warmFloorControllerMaterial) +
        client.dop1 +
        client.dop2 +
        client.dop3 +
        client.dop4 +
        client.dop5 +
        client.dop6);
  }
}
