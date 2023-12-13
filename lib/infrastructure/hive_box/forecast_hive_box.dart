import 'package:hive/hive.dart';
import 'package:weather_app_demo/domain/hive_adapters/conditions/condition_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/current/current_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/day/day_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast/forecast_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecast_model/forecast_model_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/forecastday/forecastday_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/hour/hour_type.dart';
import 'package:weather_app_demo/domain/hive_adapters/location/location_type.dart';
import 'package:weather_app_demo/domain/models/forecast_model/forecast_model.dart';

class WeatherLocalRepository {
  Future<ForecastModelDbModel> storeWeatherData(
      ForecastModel forecastmodel) async {
    final weatherDb = await Hive.openBox<ForecastModelDbModel>("forecast_db");

    ConditionDbModel currentCondition = ConditionDbModel(
        code: forecastmodel.current!.condition!.code,
        icon: forecastmodel.current!.condition!.icon,
        text: forecastmodel.current!.condition!.text);
    CurrentDbModel currentDbModel = CurrentDbModel(
        cloud: forecastmodel.current!.cloud,
        condition: currentCondition,
        feelslikeC: forecastmodel.current!.feelslikeC,
        humidity: forecastmodel.current!.humidity,
        tempC: forecastmodel.current!.tempC,
        windKph: forecastmodel.current!.windKph,
        windMph: forecastmodel.current!.windMph);

    LocationDbModel locationDbModel =
        LocationDbModel(name: forecastmodel.location!.name);
    List<ForecastdayDbModel> forecastDbModelList = [];
    for (var element in forecastmodel.forecast!.forecastday!) {
      List<HourDbModel> hourDbModelList = [];
      for (var val in element.hour!) {
        ConditionDbModel hourCondition = ConditionDbModel(
            code: val.condition!.code,
            icon: val.condition!.icon,
            text: val.condition!.text);
        HourDbModel hour = HourDbModel(
            condition: hourCondition, tempC: val.tempC, time: val.time);
        hourDbModelList.add(hour);
      }
      ConditionDbModel dayCondition = ConditionDbModel(
          code: element.day!.condition!.code,
          icon: element.day!.condition!.icon!,
          text: element.day!.condition!.text);
      DayDbModel day = DayDbModel(
          condition: dayCondition,
          maxtempC: element.day!.maxtempC,
          mintempC: element.day!.mintempC);
      ForecastdayDbModel forecastdayDbModel = ForecastdayDbModel(
          date: element.date, day: day, hour: hourDbModelList);
      forecastDbModelList.add(forecastdayDbModel);
    }

    ForecastDbModel forecastDbModel =
        ForecastDbModel(forecastday: forecastDbModelList);
    ForecastModelDbModel forecastvalue = ForecastModelDbModel(
        current: currentDbModel,
        location: locationDbModel,
        forecast: forecastDbModel);

    await weatherDb.put(0, forecastvalue);
    return forecastvalue;
  }

  Future<ForecastModelDbModel?> getweatherData() async {
    final weatherDb = await Hive.openBox<ForecastModelDbModel>("forecast_db");
    ForecastModelDbModel? value = weatherDb.get(0);
    return value;
  }
}
