import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:capp_case/src/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  BlocProvider<T> _provider<T extends Bloc>(T bloc) {
    return BlocProvider(create: (context) => bloc);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _provider(getIt<SplashBloc>()),
      ],
      child: MaterialApp(
        routes: {
          Routes.splash: (context) => const SplashScreen(),
        },
      ),
    );
  }
}
