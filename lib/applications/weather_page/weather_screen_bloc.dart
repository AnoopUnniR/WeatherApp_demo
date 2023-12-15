import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';
import 'package:weather_app_demo/infrastructure/get_location_weather.dart';
import 'package:weather_app_demo/infrastructure/hive_box/forecast_hive_box.dart';
import 'package:weather_app_demo/infrastructure/weather_services.dart';
part 'weather_screen_event.dart';
part 'weather_screen_state.dart';
part 'weather_screen_bloc.freezed.dart';

class WeatherScreenBloc extends Bloc<WeatherScreenEvent, WeatherScreenState> {
  FetchForecastWeather fetchForecastWeather = FetchForecastWeather();
  WeatherLocalRepository weatherLocalRepository = WeatherLocalRepository();
  WeatherLocationRepository weatherLocationRepository =
      WeatherLocationRepository();
  WeatherScreenBloc() : super(WeatherScreenState.initial()) {
    on<FromCityName>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      if (event.isLocation) {
        (String, ForecastModel) response =
            await weatherLocationRepository.getLocation(event.language);
        //checks if the function returns an error
        if (response.$1.isEmpty) {
          ForecastModelDbModel result =
              await weatherLocalRepository.storeWeatherData(response.$2);
          return emit(state.copyWith(isLoading: false, forecastData: result));
        } else {
          return emit(state.copyWith(
              isError: true, isLoading: false, errorText: response.$1));
        }
      } else {
        (String, ForecastModel?) response = await fetchForecastWeather
            .processDataByName(event.cityName, event.language);
        if (response.$1.isEmpty) {
          ForecastModelDbModel result =
              await weatherLocalRepository.storeWeatherData(response.$2!);
          return emit(state.copyWith(isLoading: false, forecastData: result));
        } else {
          return emit(state.copyWith(
              isError: true, isLoading: false, errorText: response.$1));
        }
      }
    });
  }
}
