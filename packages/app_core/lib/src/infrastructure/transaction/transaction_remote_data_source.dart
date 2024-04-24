import 'package:app_core/app_core.dart';

abstract class TransactionRemoteDataSource {
  Future<List<ReportModel>> doGetAllReports(User user);

  Future<bool> createReport(ReportModel report);

  Future<bool> updateReport(ReportModel report);

  Future<bool> removeReport(ReportModel report);

  Future<bool> createTransaction(TransactionModel transaction);

  Future<List<TransactionModel>> getTransactions(String reportId);

  Future<bool> removeOneTransaction(String transactionId);

  Future<bool> updateOneTransaction(TransactionModel transaction);

  Future<List<TransactionModel>> getIncomes(String? reportId, String? userId);

  Future<List<TransactionModel>> getExpenses(String? reportId, String? userId);
}
