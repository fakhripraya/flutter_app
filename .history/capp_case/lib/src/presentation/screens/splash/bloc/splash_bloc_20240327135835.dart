import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_event.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final NavigationService _navigation;

  SplashBloc(this._navigation) : super(const SplashState()) {
    on<SplashInitial>(_initial);
    on<SplashStarted>(_started);
  }

  void _initial(SplashInitial e, Emitter<SplashState> emit) async {}

  void _started(SplashStarted e, Emitter<SplashState> emit) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    _navigation.pushRemoveUntil(Routes.login);
  }
}
