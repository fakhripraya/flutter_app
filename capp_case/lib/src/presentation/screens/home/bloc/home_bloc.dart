import 'package:app_core/app_core.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TransactionUseCase _transactionUseCase;
  HomeBloc(this._transactionUseCase) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
    on<DoGetAllReports>(_doLoginOrRegisterWithGoogle);
  }

  void _initial(HomeInitial e, Emitter<HomeState> emit) async {
    emit(const HomeState());
  }

  void _started(HomeStarted e, Emitter<HomeState> emit) async {}

  void _doLoginOrRegisterWithGoogle(
    DoGetAllReports e,
    Emitter<HomeState> emit,
  ) async {
    const User user = User(id: 'hzdvZU6joKWv2zCBGOcH', username: "apakabar");
    final List<ReportModel> reports =
        await _transactionUseCase.doGetAllReports(user);
    emit(HomeState(isReportLoading: false, reports: reports));
  }
}
