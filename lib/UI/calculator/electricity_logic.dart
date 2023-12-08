import 'package:reactive_forms/reactive_forms.dart';

class ElectricityLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'cableOutput': FormControl<bool>(
      //validators: [Validators.required],
    ),
    'distributionBox': FormControl<double>(
      validators: [Validators.required],
    ),
    'connectingPoints': FormControl<double>(
      validators: [Validators.required],
    ),
    'cableLaying': FormControl<bool>(
      validators: [Validators.required],
    ),
    'warmFloorConecting': FormControl<double>(
      validators: [Validators.required],
    ),
    'warmFloor': FormControl<double>(
      validators: [Validators.required],
    ),
    'warmFloorMaterial': FormControl<String>(
      validators: [Validators.required],
    ),
    'warmFloorController': FormControl<double>(
      validators: [Validators.required],
    ),
    'warmFloorControllerMaterial': FormControl<String>(
      validators: [Validators.required],
    ),
  });

}