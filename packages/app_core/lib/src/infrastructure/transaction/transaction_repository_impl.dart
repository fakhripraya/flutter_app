import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/domain/transaction/transaction_repository.dart';
import 'package:app_core/src/infrastructure/transaction/transaction_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionRemoteDataSource _remote;

  TransactionRepositoryImpl(this._remote);

  @override
  Future<List<ReportModel>> doGetAllReports(User user) async {
    await Future.delayed(const Duration(seconds: 5));
    return _remote.doGetAllReports(user);
  }
}
