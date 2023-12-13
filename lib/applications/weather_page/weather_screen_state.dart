part of 'weather_screen_bloc.dart';

@freezed
class WeatherScreenState with _$WeatherScreenState {
  const factory WeatherScreenState.startedLoading({
    required ForecastModelDbModel? forecastData,
    required bool isLoading,
    required bool isError,
    required String errorText
  }) = StartedLoading;
  factory WeatherScreenState.initial() =>
      const WeatherScreenState.startedLoading(
        forecastData: null,
        isLoading: false,
        isError: false,
        errorText: ""

      );

}
