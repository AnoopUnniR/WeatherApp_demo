import 'package:hive/hive.dart';
import 'package:weather_app_demo/core/convert_to_hive/convert_to_hive_obj.dart';

import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';

import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';

class WeatherLocalRepository {
  Future<ForecastModelDbModel> storeWeatherData(
      ForecastModel forecastmodel) async {
    final weatherDb = await Hive.openBox<ForecastModelDbModel>("forecast_db");
    ForecastModelDbModel forecastvalue =
        ConvertToHiveObj().objToHiveobj(forecastmodel);
    await weatherDb.put(0, forecastvalue);
    return forecastvalue;
  }

  Future<ForecastModelDbModel?> getweatherData() async {
    final weatherDb = await Hive.openBox<ForecastModelDbModel>("forecast_db");
    ForecastModelDbModel? value = weatherDb.get(0);
    return value;
  }

}
