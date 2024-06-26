import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/utils/util.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_bloc.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final _bloc = context.read<HomeBloc>();

  void _initial() {
    _bloc.add(const HomeStarted());
  }

  @override
  void initState() {
    _initial();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showCreateReport(BuildContext context) => showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create Report',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Why is this report issued?"),
                const SizedBox(height: 4),
                TextField(
                  onChanged: (value) {
                    context
                        .read<HomeBloc>()
                        .add(HomeSetReportTitle(value: value));
                  },
                  style: const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(
                    hintText: 'Write...',
                  ),
                ),
                const SizedBox(height: 16),
                Builder(
                  builder: (ctx) {
                    final state = ctx.watch<HomeBloc>().state;
                    VoidCallback? onPressed;

                    if (state.reportTitle.isNotEmpty) {
                      onPressed = () {
                        context.read<HomeBloc>().add(
                            HomeShowCreateReportBottomSheet(context: context));
                      };
                    }

                    if (state.isReportCreateLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return ElevatedButton(
                      onPressed: onPressed,
                      child: const Text('Create'),
                    );
                  },
                ),
              ],
            ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (ctx) {
            final state = ctx.watch<HomeBloc>().state;
            return Text(
              'Hi, ${state.user.username}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, Routes.profile);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Center(
                child: Container(
                    height: 250,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 60),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Grand Total',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Expense',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Builder(
                                        builder: (ctx) {
                                          final expenses = ctx
                                              .watch<HomeBloc>()
                                              .state
                                              .expenses
                                              .calculate();
                                          return Text(
                                            expenses.idr(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24),
                                          );
                                        },
                                      ),
                                    ],
                                  )),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Income',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Builder(
                                        builder: (ctx) {
                                          final incomes = ctx
                                              .watch<HomeBloc>()
                                              .state
                                              .incomes
                                              .calculate();
                                          return Text(
                                            incomes.idr(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24),
                                          );
                                        },
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Amount',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Builder(
                                    builder: (ctx) {
                                      final incomes = ctx
                                          .watch<HomeBloc>()
                                          .state
                                          .incomes
                                          .calculate();
                                      final expenses = ctx
                                          .watch<HomeBloc>()
                                          .state
                                          .expenses
                                          .calculate();
                                      return Text(
                                        (incomes - expenses).idr(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      );
                                    },
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: const Text(
                      'Reports',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: const Text(
                      'More',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Builder(
                builder: (ctx) {
                  final state = ctx.watch<HomeBloc>().state;
                  final reports = state.reports;

                  if (state.isReportLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: reports.length,
                    itemBuilder: (context, index) {
                      final report = reports[index];
                      final title = report.title;

                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          onTap: () {
                            context
                                .read<TransactionBloc>()
                                .add(TransactionSetReport(report: report));
                          },
                          leading: const CircleAvatar(
                            child: Icon(Icons.report),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              context.read<HomeBloc>().add(HomeRemoveOneReport(
                                  context: context, report: report));
                              context.read<HomeBloc>().add(const HomeStarted());
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          title: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                _showCreateReport(context);
              },
              backgroundColor: Colors.black,
              elevation: 6.0,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
