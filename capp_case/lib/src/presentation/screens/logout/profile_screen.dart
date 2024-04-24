import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/components/capp_button.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_bloc.dart';
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileStarted());
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, top: 12),
                    child: Builder(
                      builder: (ctx) {
                        final state = ctx.watch<HomeBloc>().state;
                        return Text(
                          state.user.username,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Builder(
                      builder: (ctx) {
                        final state = ctx.watch<HomeBloc>().state;
                        return Text(
                          state.user.email,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        );
                      },
                    ),
                  ),
                  CAPPElevatedButton(
                    onPressed: () {
                      //do something
                      context.read<ProfileBloc>().add(
                            const ProfileDoLogout(),
                          );
                    },
                    text: 'Logout',
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    textSize: 18,
                    padding: const EdgeInsets.all(0),
                    containerBoxConstraints:
                        const BoxConstraints(minHeight: 58, maxWidth: 275),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
