import 'package:capp_case/src/presentation/screens/splash/bloc/splash_event.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {}
}
