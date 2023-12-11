part of 'weather_screen_bloc.dart';

@freezed
class WeatherScreenEvent with _$WeatherScreenEvent {
  const factory WeatherScreenEvent.started() = _Started;
  const factory WeatherScreenEvent.fromCityName({
    required String cityName,
    required bool isLocation
  }) = FromCityName;
}