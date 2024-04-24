import 'package:capp_case/src/core/constants/routes.dart';
import 'package:capp_case/src/core/di/di.dart';
import 'package:capp_case/src/core/services/navigation_service.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/home_screen.dart';
import 'package:capp_case/src/presentation/screens/login/bloc/login_bloc.dart';
import 'package:capp_case/src/presentation/screens/login/login_screen.dart';
import 'package:capp_case/src/presentation/screens/logout/bloc/profile_bloc.dart';
import 'package:capp_case/src/presentation/screens/logout/profile_screen.dart';
import 'package:capp_case/src/presentation/screens/splash/bloc/splash_bloc.dart';
import 'package:capp_case/src/presentation/screens/splash/splash_screen.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_bloc.dart';
import 'package:capp_case/src/presentation/screens/transaction/transaction_screen.dart';
import 'package:capp_case/src/presentation/theme/custom_theme.dart';
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
        _provider(getItCappCase<HomeBloc>()),
        _provider(getItCappCase<TransactionBloc>()),
        _provider(getItCappCase<ProfileBloc>()),
      ],
      child: MaterialApp(
        theme: CustomTheme.theme,
        navigatorKey: getItCappCase<NavigationService>().navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: {
          Routes.splash: (_) => const SplashScreen(),
          Routes.login: (_) => const LoginScreen(),
          Routes.profile: (_) => const ProfileScreen(),
          Routes.home: (_) => const HomeScreen(),
          Routes.transaction: (_) => const TransactionScreen(),
        },
      ),
    );
  }
}
