import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                ImageAssetPath.budget,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<LoginBloc>()
                    .add(const LoginDoLoginOrRegisterWithGoogle());
              },
              child: const Text('LOGIN WITH GOOGLE'),
            )
          ],
        ),
      ),
    );
  }
}
