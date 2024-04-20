import 'package:app_core/app_core.dart';

abstract class TransactionUseCase {
  Future<List<ReportModel>> doGetAllReports(User user);

  Future<bool> createReport(ReportModel report);

  Future<bool> removeOne(ReportModel report);

  Future<List<TransactionModel>> getTransactions(String reportId);

  Future<bool> removeOneTransaction(String transactionId);

  Future<bool> updateOneTransaction(TransactionModel transaction);
}
