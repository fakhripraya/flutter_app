import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_event.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final NavigationService _navigation;

  TransactionBloc(this._navigation) : super(const TransactionState()) {
    on<TransactionInitial>(_initial);
    on<TransactionStarted>(_started);
    on<TransactionSetReport>(_setReport);
  }

  void _initial(
    TransactionInitial event,
    Emitter<TransactionState> emit,
  ) {}

  void _started(
    TransactionStarted event,
    Emitter<TransactionState> emit,
  ) {}

  void _setReport(
    TransactionSetReport event,
    Emitter<TransactionState> emit,
  ) {
    emit(state.copyWith(report: event.report));
    _navigation.push(Routes.transaction);
  }
}
