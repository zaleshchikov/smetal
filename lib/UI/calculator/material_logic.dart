import 'package:reactive_forms/reactive_forms.dart';

class MaterialLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'm1': FormControl<int>(
      validators: [Validators.required],
    ),
  });

}