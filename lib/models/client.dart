import 'package:json_annotation/json_annotation.dart';
part 'client.g.dart';
@JsonSerializable()
class Client {
  String name;
  String address;
  String number;
  int level;
  String elevator;
  double ceiling;
  double ceilingHeight;
  double ceilingWight;
  double floor;
  double floorHeight;
  double floorWight;
  double floorRaising;
  double floorOverlap;
  double front;
  double frontHeight;
  double frontWight;
  double frontKvadratura;
  double slopes;
  double f_profile;
  double startProfile;
  double leftWall;
  double leftWallHeight;
  double leftWallWight;
  double rightWall;
  double rightWallHeight;
  double rightWallWight;
  double column;
  double railings;
  double railingsHeight;
  double railingsWight;
  double skirtingRailings;
  double baseboard;
  double angles;
  double windowsill;
  double windowsillWithGlass;
  double sillSheathing;
  double table;
  double clothesDryer;
  String ceilingMaterial;
  String floorMaterial;
  String floorRaisingMaterial;
  String floorOverlapMaterial;
  String frontMaterial;
  String slopesMaterial;
  String f_profileMaterial;
  String startProfileMaterial;
  String leftWallMaterial;
  String rightWallMaterial;
  String columnMaterial;
  String railingsMaterial;
  String skirtingRailingsMaterial;
  String baseboardMaterial;
  String anglesMaterial;
  String windowsillMaterial;
  String windowsillWithGlassMaterial;
  String sillSheathingMaterial;
  String tableMaterial;
  String clothesDryerMaterial;
  bool cableOutput;
  double distributionBox;
  double connectingPoints;
  bool cableLaying;
  double warmFloorConecting;
  double warmFloor;
  String warmFloorMaterial;
  double warmFloorController;
  String warmFloorControllerMaterial;
  double penoplex50;
  double penoplex20;
  double insolationPPU;
  double ecofol05;
  double sealing;
  double cleaning;
  double priming;
  double coloring;
  String coloringMaterial;
  double color;
  String colorMaterial;
  double dop1;
  double dop2;
  double dop3;
  double dop4;
  double dop5;
  double dop6;
  String name1;
  String name2;
  String name3;
  String name4;
  String name5;
  String name6;
  bool clothesDryerWall;
  bool clothesDryerCeiling;
  int id;

  Client(

      this.name,
      this.address,
      this.number,
      this.level,
      this.elevator,
      this.ceiling,
      this.ceilingHeight,
      this.ceilingWight,
      this.floor,
      this.floorHeight,
      this.floorWight,
      this.floorRaising,
      this.floorOverlap,
      this.front,
      this.frontHeight,
      this.frontWight,
      this.frontKvadratura,
      this.slopes,
      this.f_profile,
      this.startProfile,
      this.leftWall,
      this.leftWallHeight,
      this.leftWallWight,
      this.rightWall,
      this.rightWallHeight,
      this.rightWallWight,
      this.column,
      this.railings,
      this.railingsHeight,
      this.railingsWight,
      this.skirtingRailings,
      this.baseboard,
      this.angles,
      this.windowsill,
      this.windowsillWithGlass,
      this.sillSheathing,
      this.table,
      this.clothesDryer,
      this.ceilingMaterial,
      this.floorMaterial,
      this.floorRaisingMaterial,
      this.floorOverlapMaterial,
      this.frontMaterial,
      this.slopesMaterial,
      this.f_profileMaterial,
      this.startProfileMaterial,
      this.leftWallMaterial,
      this.rightWallMaterial,
      this.columnMaterial,
      this.railingsMaterial,
      this.skirtingRailingsMaterial,
      this.baseboardMaterial,
      this.anglesMaterial,
      this.windowsillMaterial,
      this.windowsillWithGlassMaterial,
      this.sillSheathingMaterial,
      this.tableMaterial,
      this.clothesDryerMaterial,
      this.cableOutput,
      this.distributionBox,
      this.connectingPoints,
      this.cableLaying,
      this.warmFloorConecting,
      this.warmFloor,
      this.warmFloorMaterial,
      this.warmFloorController,
      this.warmFloorControllerMaterial,
      this.penoplex50,
      this.penoplex20,
      this.insolationPPU,
      this.ecofol05,
      this.sealing,
      this.cleaning,
      this.priming,
      this.coloring,
      this.coloringMaterial,
      this.color,
      this.colorMaterial,
      this.dop1,
      this.dop2,
      this.dop3,
      this.dop4,
      this.dop5,
      this.dop6,
      this.name1,
      this.name2,
      this.name3,
      this.name4,
      this.name5,
      this.name6,
      this.clothesDryerWall,
      this.clothesDryerCeiling,
      this.id
      );

  // The generated toJson method
  Map<String, dynamic> toJson() => _$ClientToJson(this);

  // The generated fromJson method
  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

  // static Client fromJson(Map<String, dynamic> json) {
  //   var name = json['name'];
  //   var address = json['address'];
  //   var number = json['number'];
  //   var level = json['level'];
  //   var elevator = json['elevator'];
  //   var ceiling = json['ceiling'];
  //   var ceilingHeight = json['ceilingHeight'];
  //   var ceilingWight = json['ceilingWight'];
  //   var floor = json['floor'];
  //   var floorHeight = json['floorHeight'];
  //   var floorWight = json['floorWight'];
  //   var floorRaising = json['floorRaising'];
  //   var floorOverlap = json['floorOverlap'];
  //   var front = json['front'];
  //   var frontHeight = json['frontHeight'];
  //   var frontWight = json['frontWight'];
  //   var frontKvadratura = json['frontKvadratura'];
  //   var slopes = json['slopes'];
  //   var f_profile = json['f_profile'];
  //   var startProfile = json['startProfile'];
  //   var leftWall = json['leftWall'];
  //   var leftWallHeight = json['leftWallHeight'];
  //   var leftWallWight = json['leftWallWight'];
  //   var rightWall = json['rightWall'];
  //   var rightWallHeight = json['rightWallHeight'];
  //   var rightWallWight = json['rightWallWight'];
  //   var column = json['column'];
  //   var railings = json['railings'];
  //   var railingsHeight = json['railingsHeight'];
  //   var railingsWight = json['railingsWight'];
  //   var skirtingRailings = json['skirtingRailings'];
  //   var baseboard = json['baseboard'];
  //   var angles = json['angles'];
  //   var windowsill = json['windowsill'];
  //   var windowsillWithGlass = json['windowsillWithGlass'];
  //   var sillSheathing = json['sillSheathing'];
  //   var table = json['table'];
  //   var clothesDryer = json['clothesDryer'];
  //   var ceilingMaterial = json['ceilingMaterial'];
  //   var floorMaterial = json['floorMaterial'];
  //   var floorRaisingMaterial = json['floorRaisingMaterial'];
  //   var floorOverlapMaterial = json['floorOverlapMaterial'];
  //   var frontMaterial = json['frontMaterial'];
  //   var slopesMaterial = json['slopesMaterial'];
  //   var f_profileMaterial = json['f_profileMaterial'];
  //   var startProfileMaterial = json['startProfileMaterial'];
  //   var leftWallMaterial = json['leftWallMaterial'];
  //   var rightWallMaterial = json['rightWallMaterial'];
  //   var columnMaterial = json['columnMaterial'];
  //   var railingsMaterial = json['railingsMaterial'];
  //   var skirtingRailingsMaterial = json['skirtingRailingsMaterial'];
  //   var baseboardMaterial = json['baseboardMaterial'];
  //   var anglesMaterial = json['anglesMaterial'];
  //   var windowsillMaterial = json['windowsillMaterial'];
  //   var windowsillWithGlassMaterial = json['windowsillWithGlassMaterial'];
  //   var sillSheathingMaterial = json['sillSheathingMaterial'];
  //   var tableMaterial = json['tableMaterial'];
  //   var clothesDryerMaterial = json['clothesDryerMaterial'];
  //   var cableOutput = json['cableOutput'];
  //   var distributionBox = json['distributionBox'];
  //   var connectingPoints = json['connectingPoints'];
  //   var cableLaying = json['cableLaying'];
  //   var warmFloorConecting = json['warmFloorConecting'];
  //   var warmFloor = json['warmFloor'];
  //   var warmFloorMaterial = json['warmFloorMaterial'];
  //   var warmFloorController = json['warmFloorController'];
  //   var warmFloorControllerMaterial = json['warmFloorControllerMaterial'];
  //   var penoplex50 = json['penoplex50'];
  //   var penoplex20 = json['penoplex20'];
  //   var insolationPPU = json['insolationPPU'];
  //   var ecofol05 = json['ecofol05'];
  //   var sealing = json['sealing'];
  //   var cleaning = json['cleaning'];
  //   var priming = json['priming'];
  //   var coloring = json['coloring'];
  //   var coloringMaterial = json['coloringMaterial'];
  //   var color = json['color'];
  //   var colorMaterial = json['colorMaterial'];
  //   var dop1 = json['dop1'];
  //   var dop2 = json['dop2'];
  //   var dop3 = json['dop3'];
  //   var dop4 = json['dop4'];
  //   var dop5 = json['dop5'];
  //   var dop6 = json['dop6'];
  //   var name1 = json['name1'];
  //   var name2 = json['name1'];
  //   var name3 = json['name1'];
  //   var name4 = json['name1'];
  //   var name5 = json['name1'];
  //   var name6 = json['name1'];
  //   var clothesDryerWall = json['name1'];
  //   var clothesDryerCeiling = json['name1'];
  //   Client client = Client(name, address, number, level, elevator, ceiling, ceilingHeight, ceilingWight, floor, floorHeight, floorWight, floorRaising, floorOverlap, front, frontHeight, frontWight, frontKvadratura, slopes, f_profile, startProfile, leftWall, leftWallHeight, leftWallWight, rightWall, rightWallHeight, rightWallWight, column, railings, railingsHeight, railingsWight, skirtingRailings, baseboard, angles, windowsill, windowsillWithGlass, sillSheathing, table, clothesDryer, ceilingMaterial, floorMaterial, floorRaisingMaterial, floorOverlapMaterial, frontMaterial, slopesMaterial, f_profileMaterial, startProfileMaterial, leftWallMaterial, rightWallMaterial, columnMaterial, railingsMaterial, skirtingRailingsMaterial, baseboardMaterial, anglesMaterial, windowsillMaterial, windowsillWithGlassMaterial, sillSheathingMaterial, tableMaterial, clothesDryerMaterial, cableOutput, distributionBox, connectingPoints, cableLaying, warmFloorConecting, warmFloor, warmFloorMaterial, warmFloorController, warmFloorControllerMaterial, penoplex50, penoplex20, insolationPPU, ecofol05, sealing, cleaning, priming, coloring, coloringMaterial, color, colorMaterial, dop1, dop2, dop3, dop4, dop5, dop6, name1, name2, name3, name4, name5, name6, clothesDryerWall, clothesDryerCeiling);
  //   return client;
  // }



}
