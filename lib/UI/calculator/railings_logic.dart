import 'package:reactive_forms/reactive_forms.dart';

class RailingsLogic {
  static FormGroup get form => fb.group(<String, Object>{
    'heigth': FormControl<double>(
      validators: [Validators.required],
    ),
    'width': FormControl<double>(
      validators: [Validators.required],
    ),
    'kvadratura': FormControl<double>(
      validators: [Validators.required],
    ),
  });
}
