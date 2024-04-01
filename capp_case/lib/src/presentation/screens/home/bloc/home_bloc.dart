import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
  }

  void _initial(HomeInitial e, Emitter<HomeState> emit) async {}

  void _started(HomeStarted e, Emitter<HomeState> emit) async {}
}
