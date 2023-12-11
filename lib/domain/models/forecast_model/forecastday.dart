import 'package:json_annotation/json_annotation.dart';

import 'day.dart';
import 'hour.dart';

part 'forecastday.g.dart';

@JsonSerializable()
class Forecastday {
	String? date;
	@JsonKey(name: 'date_epoch') 
	int? dateEpoch;
	Day? day;
	List<Hour>? hour;

	Forecastday({this.date, this.dateEpoch, this.day, this.hour});

	factory Forecastday.fromJson(Map<String, dynamic> json) {
		return _$ForecastdayFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ForecastdayToJson(this);
}
