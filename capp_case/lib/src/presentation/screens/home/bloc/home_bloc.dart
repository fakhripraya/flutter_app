import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/Home/bloc/Home_state.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NavigationService _navigation;

  HomeBloc(this._navigation) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
  }

  void _initial(HomeInitial e, Emitter<HomeState> emit) async {}

  void _started(HomeStarted e, Emitter<HomeState> emit) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    _navigation.pushRemoveUntil(Routes.login);
  }
}
