import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/domain/transaction/transaction_model.dart';
import 'package:app_core/src/domain/transaction/transaction_repository.dart';
import 'package:app_core/src/domain/transaction/transaction_use_case.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionUseCase)
class TransactionInteractor implements TransactionUseCase {
  final TransactionRepository _repository;

  TransactionInteractor(this._repository);

  @override
  Future<List<ReportModel>> doGetAllReports(User user) =>
      _repository.doGetAllReports(user);

  @override
  Future<bool> createReport(ReportModel report) =>
      _repository.createReport(report);

  @override
  Future<bool> removeOne(ReportModel report) => _repository.removeOne(report);

  @override
  Future<List<TransactionModel>> getTransactions(String reportId) =>
      _repository.getTransactions(reportId);

  @override
  Future<bool> removeOneTransaction(String transactionId) =>
      _repository.removeOneTransaction(transactionId);

  @override
  Future<bool> updateOneTransaction(TransactionModel transaction) =>
      _repository.updateOneTransaction(transaction);

  @override
  Future<bool> createTransaction(TransactionModel transaction) =>
      _repository.createTransaction(transaction);
}
