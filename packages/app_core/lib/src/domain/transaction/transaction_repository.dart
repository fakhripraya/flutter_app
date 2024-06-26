import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/domain/transaction/transaction_model.dart';

abstract class TransactionRepository {
  Future<List<ReportModel>> doGetAllReports(User user);

  Future<bool> createReport(ReportModel report);

  Future<bool> removeOne(ReportModel report);

  Future<bool> createTransaction(TransactionModel transaction);

  Future<List<TransactionModel>> getTransactions(String reportId);

  Future<bool> removeOneTransaction(String transactionId);

  Future<bool> updateOneTransaction(TransactionModel transaction);

  Future<List<TransactionModel>> getIncomes(String? reportId, String? userId);

  Future<List<TransactionModel>> getExpenses(String? reportId, String? userId);
}
