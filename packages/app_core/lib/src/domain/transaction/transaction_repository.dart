import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';

abstract class TransactionRepository {
  Future<List<ReportModel>> doGetAllReports(UserModel user);
}