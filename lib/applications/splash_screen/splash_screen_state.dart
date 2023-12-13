part of 'splash_screen_bloc.dart';

// States for the splash screen
abstract class SplashState {}

class SplashInitialState extends SplashState {}

class SplashLoadedState extends SplashState {}

class SplashLoadedWithDataState extends SplashState {
  ForecastModelDbModel forecastModel;
  SplashLoadedWithDataState({required this.forecastModel});
}
