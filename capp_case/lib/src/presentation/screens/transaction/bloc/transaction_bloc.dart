import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_event.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final NavigationService _navigation;
  final TransactionUseCase _transactionUseCase;
  final AuthUseCase _authUseCase;

  TransactionBloc(
    this._navigation,
    this._transactionUseCase,
    this._authUseCase,
  ) : super(const TransactionState()) {
    on<TransactionInitial>(_initial);
    on<TransactionStarted>(_started);
    on<TransactionSetReport>(_setReport);
    on<TransactionSetType>(_setType);
    on<TransactionSetTitle>(_setTitle);
    on<TransactionSetDate>(_setDate);
    on<TransactionSetAmount>(_setAmount);
    on<TransactionCreate>(_create);
  }

  void _initial(
    TransactionInitial event,
    Emitter<TransactionState> emit,
  ) {}

  void _started(
    TransactionStarted event,
    Emitter<TransactionState> emit,
  ) async {
    final expense = await _transactionUseCase.getExpenses(state.report.id);
    final incomes = await _transactionUseCase.getIncomes(state.report.id);
    emit(state.copyWith(expenses: expense, incomes: incomes));
  }

  void _setType(
    TransactionSetType event,
    Emitter<TransactionState> emit,
  ) {
    emit(state.copyWith(type: event.type));
  }

  void _setTitle(
    TransactionSetTitle event,
    Emitter<TransactionState> emit,
  ) {
    emit(state.copyWith(title: event.title));
  }

  void _setDate(
    TransactionSetDate event,
    Emitter<TransactionState> emit,
  ) {
    emit(state.copyWith(createdAt: event.date));
  }

  void _setAmount(
    TransactionSetAmount event,
    Emitter<TransactionState> emit,
  ) {
    if (event.amount.isEmpty) {
      return emit(state.copyWith(amount: 0));
    }

    final sanitizer = event.amount
        .replaceAll('.', '')
        .replaceAll(',', '')
        .replaceAll('-', '')
        .replaceAll(' ', '')
        .trim();

    emit(state.copyWith(amount: int.parse(sanitizer)));
  }

  void _setReport(
    TransactionSetReport event,
    Emitter<TransactionState> emit,
  ) {
    emit(state.copyWith(report: event.report));
    _navigation.push(Routes.transaction);
  }

  void _create(
    TransactionCreate event,
    Emitter<TransactionState> emit,
  ) async {
    final user = (await _authUseCase.getProfile())!;

    final transaction = TransactionModel(
      title: state.title,
      amount: state.amount,
      createAt: state.createdAt,
      reportId: state.report.id,
      userId: user.id,
      type: state.type,
    );

    final result = await _transactionUseCase.createTransaction(transaction);
    if (!result) result;
    event.callback();
    add(const TransactionStarted());
    _navigation.pop();
  }
}
