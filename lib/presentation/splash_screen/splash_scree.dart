import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_demo/applications/splash_screen/splash_screen_bloc.dart';
import 'package:weather_app_demo/presentation/home_screen/search_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashScreenBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoadedState) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
        }
      },
      child: const Placeholder(),
    );
  }
}
