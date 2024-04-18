import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildList(BuildContext context) {
    context.read<HomeBloc>().add(const DoGetAllReports());
    final isLoading =
        context.select((HomeBloc bloc) => bloc.state.isReportLoading);
    final reports = context.select((HomeBloc bloc) => bloc.state.reports);

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SizedBox(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final entry = reports[index];
          final id = entry.id;
          final title = entry.title;

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              onTap: () {
                //FIXME: CHANGE VALUE WITH THE RIGHT PAGE ROUTE
                Navigator.restorablePushNamed(context, Routes.login);
              },
              trailing: const Text("Rp.8000.000,00"),
              title: Text(
                '$title - $id',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeStarted());

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
              /// do something
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
                              'April 2024',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Expense',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Rp.1000.000',
                                      ),
                                    ],
                                  )),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Income',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Rp.1000.000',
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My Current Amount',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Rp.8000.000',
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
                      final id = report.id;
                      final title = report.title;

                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          // leading: const CircleAvatar(
                          //   child: Icon(Icons.report),
                          // ),
                          trailing: IconButton(
                            onPressed: () {
                              context.read<HomeBloc>().add(HomeRemoveOneReport(
                                  context: context, report: report));
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

  void _showCreateReport(BuildContext context) {
    showModalBottomSheet(
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
  }
}
