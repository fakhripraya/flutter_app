import 'package:app_core/app_core.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static final List<Map<String, dynamic>> dummy = [
    {'Pengeluaran Primary': '-Rp.8000.000'},
    {'Pengeluaran Secondary': '-Rp.8000.000'},
  ];

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
            itemCount: reports?.length,
            itemBuilder: (context, index) {
              final entry = reports?[index];
              final id = entry?.id;
              final title = entry?.title;

              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  onTap: () {
                    /// on tap event
                  },
                  trailing: const Text("Rp.8000.000,00"),
                  title: Text(entry != null ? '$title - $id' : ""),
                ),
              );
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hi, Fakhri'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                //
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                Center(
                  child: _buildList(context),
                ),
              ],
            ),
          ),
        ));
  }
}
