import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/infrastructure/transaction/transaction_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRemoteDataSource)
class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  CollectionReference get _collection =>
      FirebaseFirestore.instance.collection('reports');

  Future<List<ReportModel>> _getReport(UserModel user) async {
    final query = await _collection.where('user_id', isEqualTo: user.id).get();
    final reports = query.docs
        .map((doc) => ReportModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return reports;
  }

  @override
  Future<List<ReportModel>> doGetAllReports(UserModel user) async {
    final reports = await _getReport(user);
    return reports;
  }
}
