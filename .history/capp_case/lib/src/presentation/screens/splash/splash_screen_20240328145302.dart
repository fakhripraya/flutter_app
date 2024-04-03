import 'package:capp_case/src/core/constants/image_asset_path.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(const SplashStarted());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                ImageAssetPath.money,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Money Analytic Management',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
