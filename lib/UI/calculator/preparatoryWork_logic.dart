import 'package:reactive_forms/reactive_forms.dart';

class PreparatoryWorkAlertLogic {
  static FormGroup get form => fb.group(<String, Object>{
    'leftWall': FormControl<bool>(
      validators: [Validators.required],
    ),
    'rightWall': FormControl<bool>(
      validators: [Validators.required],
    ),
    'ceiling': FormControl<bool>(
      validators: [Validators.required],
    ),
    'floor': FormControl<bool>(
      validators: [Validators.required],
    ),
    'railings': FormControl<bool>(
      validators: [Validators.required],
    ),
    'column': FormControl<bool>(
      validators: [Validators.required],
    ),
    'front': FormControl<bool>(
      validators: [Validators.required],
    ),
  });
}
