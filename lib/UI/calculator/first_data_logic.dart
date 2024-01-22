import 'package:reactive_forms/reactive_forms.dart';

class FirstDataLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'name': FormControl<String>(
      validators: [Validators.required],
    ),
    'address': FormControl<String>(
      validators: [Validators.required],
    ),
    'number': FormControl<String>(
      validators: [Validators.required],
    ),
    'level': FormControl<int>(
      validators: [Validators.required],
    ),
    'elevator': FormControl<String>(
      validators: [Validators.required],
    ),
  });

}