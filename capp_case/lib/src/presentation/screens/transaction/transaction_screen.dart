import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  late final _bloc = context.read<TransactionBloc>();

  void _initial() {}

  @override
  void initState() {
    _initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
