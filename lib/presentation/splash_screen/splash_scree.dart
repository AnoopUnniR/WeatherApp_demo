import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_demo/applications/splash_screen/splash_screen_bloc.dart';
import 'package:weather_app_demo/presentation/home_screen/search_page.dart';
import 'package:weather_app_demo/presentation/home_screen/weather_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashScreenBloc, SplashState>(
      listener: (context, state) {
        if(state is SplashLoadedWithDataState){
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => WeatherPage(forecastModel: state.forecastModel),
            ),
          );
        }
        if (state is SplashLoadedState) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ),
          );
        }
      },
      child:Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(
                Icons.wb_sunny,
                size: 80.0,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Weather App',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
