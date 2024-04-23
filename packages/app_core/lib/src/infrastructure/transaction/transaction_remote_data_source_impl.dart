import 'package:app_core/src/domain/auth/user_model.dart';
import 'package:app_core/src/domain/transaction/report_model.dart';
import 'package:app_core/src/domain/transaction/transaction_model.dart';
import 'package:app_core/src/infrastructure/transaction/transaction_remote_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRemoteDataSource)
class TransactionRemoteDataSourceImpl implements TransactionRemoteDataSource {
  CollectionReference get _reportCollection =>
      FirebaseFirestore.instance.collection('reports');

  CollectionReference get _transactionCollection =>
      FirebaseFirestore.instance.collection('transactions');

  Future<List<ReportModel>> _getReport(User user) async {
    final query =
        await _reportCollection.where('userId', isEqualTo: user.id).get();

    return query.docs
        .map((doc) => ReportModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ReportModel>> doGetAllReports(User user) => _getReport(user);

  @override
  Future<bool> createReport(ReportModel report) async {
    try {
      final docRef = await _reportCollection.add(report.toJson());
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
  Future<bool> removeReport(ReportModel report) => _reportCollection
      .doc(report.id)
      .delete()
      .then((_) => true)
      .catchError((_) => false);

  @override
  Future<bool> updateReport(ReportModel report) => _reportCollection
      .doc(report.id)
      .update(report.toJson())
      .then((_) => true)
      .catchError((_) => false);

  @override
  Future<List<TransactionModel>> getTransactions(String reportId) async {
    final snapshot = await _transactionCollection
        .where('reportId', isEqualTo: reportId)
        .get();

    return snapshot.docs
        .map((e) => TransactionModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<bool> removeOneTransaction(String transactionId) {
    // TODO: implement removeOneTransaction
    throw UnimplementedError();
  }

  @override
  Future<bool> updateOneTransaction(TransactionModel transaction) {
    // TODO: implement updateOneTransaction
    throw UnimplementedError();
  }

  @override
  Future<bool> createTransaction(TransactionModel transaction) async {
    final doc = await _transactionCollection.add(transaction.toJson());
    final snapshot = await doc.get();

    final mTransaction = TransactionModel.fromJson(
      snapshot.data() as Map<String, dynamic>,
    ).copyWith(id: doc.id);

    return doc
        .update(mTransaction.toJson())
        .then((_) => true)
        .catchError((_) => false);
  }

  @override
  Future<List<TransactionModel>> getExpenses(String reportId) async {
    final snapshot = await _transactionCollection
        .where('reportId', isEqualTo: reportId)
        .where('type', isEqualTo: 'expense')
        .get();

    return snapshot.docs
        .map((e) => TransactionModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<TransactionModel>> getIncomes(String reportId) async {
    final snapshot = await _transactionCollection
        .where('reportId', isEqualTo: reportId)
        .where('type', isEqualTo: 'income')
        .get();

    return snapshot.docs
        .map((e) => TransactionModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }
}
