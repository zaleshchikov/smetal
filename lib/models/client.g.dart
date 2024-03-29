// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Client _$ClientFromJson(Map<String, dynamic> json) => Client(
      json['name'] as String,
      json['address'] as String,
      json['number'] as String,
      json['level'] as int,
      json['elevator'] as String,
      (json['ceiling'] as num).toDouble(),
      (json['ceilingHeight'] as num).toDouble(),
      (json['ceilingWight'] as num).toDouble(),
      (json['floor'] as num).toDouble(),
      (json['floorHeight'] as num).toDouble(),
      (json['floorWight'] as num).toDouble(),
      (json['floorRaising'] as num).toDouble(),
      (json['floorOverlap'] as num).toDouble(),
      (json['front'] as num).toDouble(),
      (json['frontHeight'] as num).toDouble(),
      (json['frontWight'] as num).toDouble(),
      (json['frontKvadratura'] as num).toDouble(),
      (json['slopes'] as num).toDouble(),
      (json['f_profile'] as num).toDouble(),
      (json['startProfile'] as num).toDouble(),
      (json['leftWall'] as num).toDouble(),
      (json['leftWallHeight'] as num).toDouble(),
      (json['leftWallWight'] as num).toDouble(),
      (json['rightWall'] as num).toDouble(),
      (json['rightWallHeight'] as num).toDouble(),
      (json['rightWallWight'] as num).toDouble(),
      (json['column'] as num).toDouble(),
      (json['railings'] as num).toDouble(),
      (json['railingsHeight'] as num).toDouble(),
      (json['railingsWight'] as num).toDouble(),
      (json['skirtingRailings'] as num).toDouble(),
      (json['baseboard'] as num).toDouble(),
      (json['angles'] as num).toDouble(),
      (json['windowsill'] as num).toDouble(),
      (json['windowsillWithGlass'] as num).toDouble(),
      (json['sillSheathing'] as num).toDouble(),
      (json['table'] as num).toDouble(),
      (json['clothesDryer'] as num).toDouble(),
      json['ceilingMaterial'] as String,
      json['floorMaterial'] as String,
      json['floorRaisingMaterial'] as String,
      json['floorOverlapMaterial'] as String,
      json['frontMaterial'] as String,
      json['slopesMaterial'] as String,
      json['f_profileMaterial'] as String,
      json['startProfileMaterial'] as String,
      json['leftWallMaterial'] as String,
      json['rightWallMaterial'] as String,
      json['columnMaterial'] as String,
      json['railingsMaterial'] as String,
      json['skirtingRailingsMaterial'] as String,
      json['baseboardMaterial'] as String,
      json['anglesMaterial'] as String,
      json['windowsillMaterial'] as String,
      json['windowsillWithGlassMaterial'] as String,
      json['sillSheathingMaterial'] as String,
      json['tableMaterial'] as String,
      json['clothesDryerMaterial'] as String,
      json['cableOutput'] as bool,
      (json['distributionBox'] as num).toDouble(),
      (json['connectingPoints'] as num).toDouble(),
      json['cableLaying'] as bool,
      (json['warmFloorConecting'] as num).toDouble(),
      (json['warmFloor'] as num).toDouble(),
      json['warmFloorMaterial'] as String,
      (json['warmFloorController'] as num).toDouble(),
      json['warmFloorControllerMaterial'] as String,
      (json['penoplex50'] as num).toDouble(),
      (json['penoplex20'] as num).toDouble(),
      (json['insolationPPU'] as num).toDouble(),
      (json['ecofol05'] as num).toDouble(),
      (json['sealing'] as num).toDouble(),
      (json['cleaning'] as num).toDouble(),
      (json['priming'] as num).toDouble(),
      (json['coloring'] as num).toDouble(),
      json['coloringMaterial'] as String,
      (json['color'] as num).toDouble(),
      json['colorMaterial'] as String,
      (json['dop1'] as num).toDouble(),
      (json['dop2'] as num).toDouble(),
      (json['dop3'] as num).toDouble(),
      (json['dop4'] as num).toDouble(),
      (json['dop5'] as num).toDouble(),
      (json['dop6'] as num).toDouble(),
      json['name1'] as String,
      json['name2'] as String,
      json['name3'] as String,
      json['name4'] as String,
      json['name5'] as String,
      json['name6'] as String,
      json['clothesDryerWall'] as bool,
      json['clothesDryerCeiling'] as bool,
      json['id'] as int,
      (json['preparatoryWork'] as num).toDouble(),
    );

Map<String, dynamic> _$ClientToJson(Client instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'number': instance.number,
      'level': instance.level,
      'elevator': instance.elevator,
      'ceiling': instance.ceiling,
      'ceilingHeight': instance.ceilingHeight,
      'ceilingWight': instance.ceilingWight,
      'floor': instance.floor,
      'floorHeight': instance.floorHeight,
      'floorWight': instance.floorWight,
      'floorRaising': instance.floorRaising,
      'floorOverlap': instance.floorOverlap,
      'front': instance.front,
      'frontHeight': instance.frontHeight,
      'frontWight': instance.frontWight,
      'frontKvadratura': instance.frontKvadratura,
      'slopes': instance.slopes,
      'f_profile': instance.f_profile,
      'startProfile': instance.startProfile,
      'leftWall': instance.leftWall,
      'leftWallHeight': instance.leftWallHeight,
      'leftWallWight': instance.leftWallWight,
      'rightWall': instance.rightWall,
      'rightWallHeight': instance.rightWallHeight,
      'rightWallWight': instance.rightWallWight,
      'column': instance.column,
      'railings': instance.railings,
      'railingsHeight': instance.railingsHeight,
      'railingsWight': instance.railingsWight,
      'skirtingRailings': instance.skirtingRailings,
      'baseboard': instance.baseboard,
      'angles': instance.angles,
      'windowsill': instance.windowsill,
      'windowsillWithGlass': instance.windowsillWithGlass,
      'sillSheathing': instance.sillSheathing,
      'table': instance.table,
      'clothesDryer': instance.clothesDryer,
      'ceilingMaterial': instance.ceilingMaterial,
      'floorMaterial': instance.floorMaterial,
      'floorRaisingMaterial': instance.floorRaisingMaterial,
      'floorOverlapMaterial': instance.floorOverlapMaterial,
      'frontMaterial': instance.frontMaterial,
      'slopesMaterial': instance.slopesMaterial,
      'f_profileMaterial': instance.f_profileMaterial,
      'startProfileMaterial': instance.startProfileMaterial,
      'leftWallMaterial': instance.leftWallMaterial,
      'rightWallMaterial': instance.rightWallMaterial,
      'columnMaterial': instance.columnMaterial,
      'railingsMaterial': instance.railingsMaterial,
      'skirtingRailingsMaterial': instance.skirtingRailingsMaterial,
      'baseboardMaterial': instance.baseboardMaterial,
      'anglesMaterial': instance.anglesMaterial,
      'windowsillMaterial': instance.windowsillMaterial,
      'windowsillWithGlassMaterial': instance.windowsillWithGlassMaterial,
      'sillSheathingMaterial': instance.sillSheathingMaterial,
      'tableMaterial': instance.tableMaterial,
      'clothesDryerMaterial': instance.clothesDryerMaterial,
      'cableOutput': instance.cableOutput,
      'distributionBox': instance.distributionBox,
      'connectingPoints': instance.connectingPoints,
      'cableLaying': instance.cableLaying,
      'warmFloorConecting': instance.warmFloorConecting,
      'warmFloor': instance.warmFloor,
      'warmFloorMaterial': instance.warmFloorMaterial,
      'warmFloorController': instance.warmFloorController,
      'warmFloorControllerMaterial': instance.warmFloorControllerMaterial,
      'penoplex50': instance.penoplex50,
      'penoplex20': instance.penoplex20,
      'insolationPPU': instance.insolationPPU,
      'ecofol05': instance.ecofol05,
      'sealing': instance.sealing,
      'cleaning': instance.cleaning,
      'priming': instance.priming,
      'coloring': instance.coloring,
      'coloringMaterial': instance.coloringMaterial,
      'color': instance.color,
      'colorMaterial': instance.colorMaterial,
      'dop1': instance.dop1,
      'dop2': instance.dop2,
      'dop3': instance.dop3,
      'dop4': instance.dop4,
      'dop5': instance.dop5,
      'dop6': instance.dop6,
      'name1': instance.name1,
      'name2': instance.name2,
      'name3': instance.name3,
      'name4': instance.name4,
      'name5': instance.name5,
      'name6': instance.name6,
      'clothesDryerWall': instance.clothesDryerWall,
      'clothesDryerCeiling': instance.clothesDryerCeiling,
      'id': instance.id,
      'preparatoryWork': instance.preparatoryWork,
    };
