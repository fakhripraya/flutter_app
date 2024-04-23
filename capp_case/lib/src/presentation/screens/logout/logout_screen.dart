import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/components/capp_button.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeStarted());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Builder(
          builder: (ctx) {
            return const Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      body: Center(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      ImageAssetPath.placeholderPFP,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12, top: 12),
                    child: Text(
                      'Rizalflutter',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Rizal@flutter.com',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CAPPElevatedButton(
                    onPressed: () {
                      //do something
                    },
                    text: 'Logout',
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(8),
                    containerBoxConstraints:
                        const BoxConstraints(minHeight: 58, maxWidth: 250),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
