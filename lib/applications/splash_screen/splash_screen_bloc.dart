import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';
import 'package:weather_app_demo/infrastructure/hive_box/forecast_hive_box.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashEvent, SplashState> {
  WeatherLocalRepository weatherLocalRepository = WeatherLocalRepository();
  SplashScreenBloc() : super(SplashInitialState()) {
    on<SplashEvent>((event, emit) async {
      ForecastModelDbModel? localData = await weatherLocalRepository.getweatherData();
      await Future.delayed(const Duration(seconds: 5));
      if (localData != null) {
       return  emit(SplashLoadedWithDataState(forecastModel: localData));
      }
      emit(SplashLoadedState());
    });
  }
}
