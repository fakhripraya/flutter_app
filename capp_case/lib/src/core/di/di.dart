import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final getItCappCase = GetIt.I;

@injectableInit
Future<void> cappCaseConfigureDependencies() async => getItCappCase.init();
