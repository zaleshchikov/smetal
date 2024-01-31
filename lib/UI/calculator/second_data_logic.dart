import 'package:reactive_forms/reactive_forms.dart';

class SecondDataLogic {
  static FormGroup get form => fb.group(<String, Object>{
        'ceiling': FormControl<double>(
          validators: [Validators.required],
        ),
        'preparatoryWork': FormControl<double>(
          validators: [Validators.required],
        ),
        'hiddenWork': FormControl<double>(
          validators: [Validators.required],
        ),
        'mortgageWork': FormControl<double>(
          validators: [Validators.required],
        ),
        'ceilingHeight': FormControl<double>(
          validators: [Validators.required],
        ),
        'ceilingWight': FormControl<double>(
          validators: [Validators.required],
        ),
        'floorHeight': FormControl<double>(
          validators: [Validators.required],
        ),
        'floorWight': FormControl<double>(
          validators: [Validators.required],
        ),
        'floor': FormControl<double>(
          validators: [Validators.required],
        ),
        'floorRaising': FormControl<double>(
          validators: [Validators.required],
        ),
        'floorOverlap': FormControl<double>(
          validators: [Validators.required],
        ),
        'front': FormControl<double>(
          validators: [Validators.required],
        ),
        'frontHeight': FormControl<double>(
          validators: [Validators.required],
        ),
        'frontWight': FormControl<double>(
          validators: [Validators.required],
        ),
        'frontKvadratura': FormControl<double>(
          validators: [Validators.required],
        ),
        'slopes': FormControl<double>(
          validators: [Validators.required],
        ),
        'f_profile': FormControl<double>(
          validators: [Validators.required],
        ),
        'startProfile': FormControl<double>(
          validators: [Validators.required],
        ),
        'leftWall': FormControl<double>(
          validators: [Validators.required],
        ),
        'rightWall': FormControl<double>(
          validators: [Validators.required],
        ),
        'column': FormControl<double>(
          validators: [Validators.required],
        ),
        'railings': FormControl<double>(
          validators: [Validators.required],
        ),
        'railingsHeight': FormControl<double>(
          validators: [Validators.required],
        ),
        'railingsWight': FormControl<double>(
          validators: [Validators.required],
        ),
        'skirtingRailings': FormControl<double>(
          validators: [Validators.required],
        ),
        'baseboard': FormControl<double>(
          validators: [Validators.required],
        ),
        'angles': FormControl<double>(
          validators: [Validators.required],
        ),
        'windowsill': FormControl<double>(
          validators: [Validators.required],
        ),
        'windowsillWithGlass': FormControl<double>(
          validators: [Validators.required],
        ),
        'sillSheathing': FormControl<double>(
          validators: [Validators.required],
        ),
        'table': FormControl<double>(
          validators: [Validators.required],
        ),
        'clothesDryer': FormControl<double>(
          validators: [Validators.required],
        ),
        'ceilingMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'floorMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'floorRaisingMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'floorOverlapMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'frontMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'slopesMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'f_profileMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'startProfileMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'leftWallMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'rightWallMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'columnMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'railingsMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'skirtingRailingsMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'baseboardMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'anglesMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'windowsillMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'windowsillWithGlassMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'sillSheathingMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'tableMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'clothesDryerMaterial': FormControl<String>(
          validators: [Validators.required],
        ),
        'clothesDryerWall': FormControl<bool>(
          validators: [Validators.required],
        ),
        'clothesDryerCeiling': FormControl<bool>(
          validators: [Validators.required],
        ),
      });
}
