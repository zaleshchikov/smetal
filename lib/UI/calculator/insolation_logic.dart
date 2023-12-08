import 'package:reactive_forms/reactive_forms.dart';

class InsulationLogic{

  static FormGroup get form => fb.group(<String, Object>{
    'penoplex50': FormControl<double>(
      validators: [Validators.required],
    ),
    'penoplex20': FormControl<double>(
      validators: [Validators.required],
    ),
    'insolationPPU': FormControl<double>(
      validators: [Validators.required],
    ),
    'ecofol05': FormControl<double>(
      validators: [Validators.required],
    ),
    'sealing': FormControl<double>(
      validators: [Validators.required],
    ),
  });

}