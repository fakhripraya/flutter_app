import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/utils/util.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TransactionUseCase _transactionUseCase;
  final AuthUseCase _authUseCase;

  HomeBloc(
    this._transactionUseCase,
    this._authUseCase,
  ) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
    on<DoGetAllReports>(_doLoginOrRegisterWithGoogle);
    on<HomeShowCreateReportBottomSheet>(_showCreateReportBottomSheet);
    on<HomeSetReportTitle>(_setReportTitle);
    on<HomeRemoveOneReport>(_removeOneReport);
  }

  void _initial(HomeInitial e, Emitter<HomeState> emit) async =>
      emit(const HomeState());

  void _started(HomeStarted e, Emitter<HomeState> emit) async {
    final expense = await _transactionUseCase.getExpenses(null, state.user.id);
    final incomes = await _transactionUseCase.getIncomes(null, state.user.id);

    emit(state.copyWith(expenses: expense, incomes: incomes));

    emit(state.copyWith(isReportLoading: true));
    emit(state.copyWith(user: (await _authUseCase.getProfile())!));

    final reports = await _transactionUseCase.doGetAllReports(
      User(id: state.user.id, username: state.user.username),
    );

    emit(state.copyWith(reports: reports));
    emit(state.copyWith(isReportLoading: false));
  }

  void _doLoginOrRegisterWithGoogle(
    DoGetAllReports e,
    Emitter<HomeState> emit,
  ) async {
    final reports = await _transactionUseCase.doGetAllReports(
      User(id: state.user.id, username: state.user.username),
    );

    emit(state.copyWith(isReportLoading: false, reports: reports));
  }

  void _setReportTitle(HomeSetReportTitle event, Emitter<HomeState> emit) {
    emit(state.copyWith(reportTitle: event.value));
  }

  void _showCreateReportBottomSheet(
    HomeShowCreateReportBottomSheet event,
    Emitter<HomeState> emit,
  ) async {
    final context = event.context;

    emit(state.copyWith(isReportCreateLoading: true));

    try {
      final report = ReportModel(
        title: state.reportTitle,
        userId: state.user.id,
        createdAt: DateTime.now().toIso8601String(),
      );

      await _transactionUseCase.createReport(report);

      final user = User(
        id: state.user.id,
        username: state.user.username,
      );

      final reports = await _transactionUseCase.doGetAllReports(user);
      emit(state.copyWith(reports: reports));
      if (!context.mounted) return;
      context.snackbar(message: 'Created');
    } catch (_) {
      context.snackbar(message: 'Something wrong');
    } finally {
      emit(state.copyWith(isReportCreateLoading: false));
      context.pop();
    }
  }

  void _removeOneReport(
    HomeRemoveOneReport event,
    Emitter<HomeState> emit,
  ) async {
    await _transactionUseCase.removeOne(event.report);
    final user = User(id: state.user.id, username: state.user.username);
    final reports = await _transactionUseCase.doGetAllReports(user);
    emit(state.copyWith(reports: reports));
  }
}
