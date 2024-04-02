import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_event.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState()) {
    on<TransactionInitial>(_initial);
    on<TransactionStarted>(_started);
  }

  void _initial(TransactionInitial event, Emitter<TransactionState> emit) {}

  void _started(TransactionStarted event, Emitter<TransactionState> emit) {}
}
