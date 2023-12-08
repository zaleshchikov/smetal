import 'package:reactive_forms/reactive_forms.dart';

class ExtraLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'name1': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop1': FormControl<double>(
      validators: [Validators.required],
    ),
    'name2': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop2': FormControl<double>(
      validators: [Validators.required],
    ),
    'name3': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop3': FormControl<double>(
      validators: [Validators.required],
    ),
    'name4': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop4': FormControl<double>(
      validators: [Validators.required],
    ),
    'name5': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop5': FormControl<double>(
      validators: [Validators.required],
    ),
    'name6': FormControl<String>(
      validators: [Validators.required],
    ),
    'dop6': FormControl<double>(
      validators: [Validators.required],
    ),
  });

}