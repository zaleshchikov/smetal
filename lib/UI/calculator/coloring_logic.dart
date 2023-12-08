import 'package:reactive_forms/reactive_forms.dart';

class ColoringLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'cleaning': FormControl<double>(
      validators: [Validators.required],
    ),
    'priming': FormControl<double>(
      validators: [Validators.required],
    ),
    'coloring': FormControl<double>(
      validators: [Validators.required],
    ),
    'color': FormControl<double>(
      validators: [Validators.required],
    ),
    'colorMaterial': FormControl<String>(
      validators: [Validators.required],
    ),
    'coloringMaterial': FormControl<String>(
      validators: [Validators.required],
    ),
  });

}