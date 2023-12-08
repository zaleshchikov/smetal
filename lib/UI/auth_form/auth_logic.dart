import 'package:reactive_forms/reactive_forms.dart';

class AuthLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'name': FormControl<String>(
      validators: [Validators.required],
    ),
    'password': FormControl<String>(
      validators: [Validators.required],
    ),
  });

}