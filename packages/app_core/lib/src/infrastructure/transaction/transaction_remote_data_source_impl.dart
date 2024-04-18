import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/infrastructure/transaction/transaction_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRemoteDataSource)
class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  CollectionReference get _collection =>
      FirebaseFirestore.instance.collection('reports');

  Future<List<ReportModel>> _getReport(User user) async {
    final query = await _collection.where('userId', isEqualTo: user.id).get();

    return query.docs
        .map((doc) => ReportModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ReportModel>> doGetAllReports(User user) => _getReport(user);

  @override
  Future<bool> createReport(ReportModel report) async {
    try {
      final docRef = await _collection.add(report.toJson());
      final snapshot = await docRef.get();
      final data = ReportModel.fromJson(
        snapshot.data() as Map<String, dynamic>,
      ).copyWith(id: docRef.id);
      await docRef.update(data.toJson());
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> removeReport(ReportModel report) => _collection
      .doc(report.id)
      .delete()
      .then((_) => true)
      .catchError((_) => false);

  @override
  Future<bool> updateReport(ReportModel report) => _collection
      .doc(report.id)
      .update(report.toJson())
      .then((_) => true)
      .catchError((_) => false);
}
