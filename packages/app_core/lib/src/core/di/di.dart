import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'di.config.dart';

final getItAppCore = GetIt.I;

@injectableInit
Future<void> appCoreConfigureDependencies() async => getItAppCore.init();
