import 'package:capp_case/src/core/utils/validators.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  FormValidator formValidator = FormValidator();
}
