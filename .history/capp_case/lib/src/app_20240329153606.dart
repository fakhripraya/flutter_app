import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/di/di.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/login_screen.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:capp_case/src/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  BlocProvider<T> _provider<T extends Bloc>(T bloc) {
    return BlocProvider(create: (context) => bloc);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: theme.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));

    return MultiBlocProvider(
      providers: [
        _provider(getItCappCase<SplashBloc>()),
        _provider(getItCappCase<LoginBloc>()),
      ],
      child: MaterialApp(
        navigatorKey: getItCappCase<NavigationService>().navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: {
          Routes.splash: (_) => const SplashScreen(),
          Routes.login: (_) => const LoginScreen(),
          Routes.home: (_) => const SplashScreen(),
        },
      ),
    );
  }
}
