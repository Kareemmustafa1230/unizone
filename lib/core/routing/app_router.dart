import 'package:dio/dio.dart';
import 'package:feta/core/routing/routes.dart';
import 'package:feta/features/login_app/data/repo/login_repo.dart';
import 'package:feta/features/login_app/ui/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login_app/cubit/login_user_cubit.dart';
import '../databases/api/dio_consumer.dart';

class AppRouter{
  Route generateRoute( RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const Placeholder());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginUserCubit(LoginRepository(api: DioConsumer(dio: Dio()))),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => const Placeholder());
      default:
        return MaterialPageRoute(
            builder: (context) =>  Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
            ),
            ),
        );
    }
  }
}