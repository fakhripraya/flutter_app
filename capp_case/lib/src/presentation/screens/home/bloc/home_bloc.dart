import 'package:app_core/app_core.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TransactionUseCase _transactionUseCase;

  HomeBloc(this._transactionUseCase) : super(const HomeState()) {
    on<HomeInitial>(_initial);
    on<HomeStarted>(_started);
    on<DoGetAllReports>(_doLoginOrRegisterWithGoogle);
    on<HomeShowCreateReportBottomSheet>(_showCreateReportBottomSheet);
  }

  void _initial(HomeInitial e, Emitter<HomeState> emit) async {
    emit(const HomeState());
  }

  void _started(HomeStarted e, Emitter<HomeState> emit) async {}

  void _doLoginOrRegisterWithGoogle(
    DoGetAllReports e,
    Emitter<HomeState> emit,
  ) async {
    const user = User(id: 'hzdvZU6joKWv2zCBGOcH', username: "apakabar");
    final reports = await _transactionUseCase.doGetAllReports(user);
    emit(HomeState(isReportLoading: false, reports: reports));
  }

  void _showCreateReportBottomSheet(
    HomeShowCreateReportBottomSheet event,
    Emitter<HomeState> emit,
  ) {
    final context = event.context;
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Create Report',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 16),
              const Text("Why is this report issued?"),
              const SizedBox(height: 4),
              const TextField(
                style: TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: 'Write...',
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Create'),
              )
            ],
          ),
        );
      },
      backgroundColor: Colors.white,
    );
  }
}
