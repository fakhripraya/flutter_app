import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

void main() async {
  final instance = FakeFirebaseFirestore();
  await instance.collection('users').add({
    'username': 'Bob',
  });
  final snapshot = await instance.collection('users').get();
}