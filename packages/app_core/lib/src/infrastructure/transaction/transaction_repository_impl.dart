import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/domain/transaction/transaction_model.dart';
import 'package:app_core/src/domain/transaction/transaction_repository.dart';
import 'package:app_core/src/infrastructure/transaction/transaction_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource _remote;

  TransactionRepositoryImpl(this._remote);

  @override
  Future<List<ReportModel>> doGetAllReports(User user) =>
      _remote.doGetAllReports(user);

  @override
  Future<bool> createReport(ReportModel report) => _remote.createReport(report);

  @override
  Future<bool> removeOne(ReportModel report) => _remote.removeReport(report);

  @override
  Future<List<TransactionModel>> getTransactions(String reportId) =>
      _remote.getTransactions(reportId);

  @override
  Future<bool> removeOneTransaction(String transactionId) =>
      _remote.removeOneTransaction(transactionId);

  @override
  Future<bool> updateOneTransaction(TransactionModel transaction) =>
      _remote.updateOneTransaction(transaction);
}
