// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName, bool isLocation) fromCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName, bool isLocation)? fromCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName, bool isLocation)? fromCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FromCityName value) fromCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FromCityName value)? fromCityName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FromCityName value)? fromCityName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenEventCopyWith<$Res> {
  factory $WeatherScreenEventCopyWith(
          WeatherScreenEvent value, $Res Function(WeatherScreenEvent) then) =
      _$WeatherScreenEventCopyWithImpl<$Res, WeatherScreenEvent>;
}

/// @nodoc
class _$WeatherScreenEventCopyWithImpl<$Res, $Val extends WeatherScreenEvent>
    implements $WeatherScreenEventCopyWith<$Res> {
  _$WeatherScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WeatherScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName, bool isLocation) fromCityName,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName, bool isLocation)? fromCityName,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName, bool isLocation)? fromCityName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FromCityName value) fromCityName,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FromCityName value)? fromCityName,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FromCityName value)? fromCityName,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WeatherScreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FromCityNameImplCopyWith<$Res> {
  factory _$$FromCityNameImplCopyWith(
          _$FromCityNameImpl value, $Res Function(_$FromCityNameImpl) then) =
      __$$FromCityNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName, bool isLocation});
}

/// @nodoc
class __$$FromCityNameImplCopyWithImpl<$Res>
    extends _$WeatherScreenEventCopyWithImpl<$Res, _$FromCityNameImpl>
    implements _$$FromCityNameImplCopyWith<$Res> {
  __$$FromCityNameImplCopyWithImpl(
      _$FromCityNameImpl _value, $Res Function(_$FromCityNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? isLocation = null,
  }) {
    return _then(_$FromCityNameImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      isLocation: null == isLocation
          ? _value.isLocation
          : isLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FromCityNameImpl implements FromCityName {
  const _$FromCityNameImpl({required this.cityName, required this.isLocation});

  @override
  final String cityName;
  @override
  final bool isLocation;

  @override
  String toString() {
    return 'WeatherScreenEvent.fromCityName(cityName: $cityName, isLocation: $isLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromCityNameImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.isLocation, isLocation) ||
                other.isLocation == isLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName, isLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromCityNameImplCopyWith<_$FromCityNameImpl> get copyWith =>
      __$$FromCityNameImplCopyWithImpl<_$FromCityNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String cityName, bool isLocation) fromCityName,
  }) {
    return fromCityName(cityName, isLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String cityName, bool isLocation)? fromCityName,
  }) {
    return fromCityName?.call(cityName, isLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String cityName, bool isLocation)? fromCityName,
    required TResult orElse(),
  }) {
    if (fromCityName != null) {
      return fromCityName(cityName, isLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FromCityName value) fromCityName,
  }) {
    return fromCityName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FromCityName value)? fromCityName,
  }) {
    return fromCityName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FromCityName value)? fromCityName,
    required TResult orElse(),
  }) {
    if (fromCityName != null) {
      return fromCityName(this);
    }
    return orElse();
  }
}

abstract class FromCityName implements WeatherScreenEvent {
  const factory FromCityName(
      {required final String cityName,
      required final bool isLocation}) = _$FromCityNameImpl;

  String get cityName;
  bool get isLocation;
  @JsonKey(ignore: true)
  _$$FromCityNameImplCopyWith<_$FromCityNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherScreenState {
  ForecastModel? get forecastData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastModel? forecastData, bool isLoading,
            bool isError, String errorText)
        startedLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastModel? forecastData, bool isLoading, bool isError,
            String errorText)?
        startedLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastModel? forecastData, bool isLoading, bool isError,
            String errorText)?
        startedLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedLoading value) startedLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedLoading value)? startedLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedLoading value)? startedLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherScreenStateCopyWith<WeatherScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateCopyWith(
          WeatherScreenState value, $Res Function(WeatherScreenState) then) =
      _$WeatherScreenStateCopyWithImpl<$Res, WeatherScreenState>;
  @useResult
  $Res call(
      {ForecastModel? forecastData,
      bool isLoading,
      bool isError,
      String errorText});
}

/// @nodoc
class _$WeatherScreenStateCopyWithImpl<$Res, $Val extends WeatherScreenState>
    implements $WeatherScreenStateCopyWith<$Res> {
  _$WeatherScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastData = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorText = null,
  }) {
    return _then(_value.copyWith(
      forecastData: freezed == forecastData
          ? _value.forecastData
          : forecastData // ignore: cast_nullable_to_non_nullable
              as ForecastModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedLoadingImplCopyWith<$Res>
    implements $WeatherScreenStateCopyWith<$Res> {
  factory _$$StartedLoadingImplCopyWith(_$StartedLoadingImpl value,
          $Res Function(_$StartedLoadingImpl) then) =
      __$$StartedLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForecastModel? forecastData,
      bool isLoading,
      bool isError,
      String errorText});
}

/// @nodoc
class __$$StartedLoadingImplCopyWithImpl<$Res>
    extends _$WeatherScreenStateCopyWithImpl<$Res, _$StartedLoadingImpl>
    implements _$$StartedLoadingImplCopyWith<$Res> {
  __$$StartedLoadingImplCopyWithImpl(
      _$StartedLoadingImpl _value, $Res Function(_$StartedLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastData = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorText = null,
  }) {
    return _then(_$StartedLoadingImpl(
      forecastData: freezed == forecastData
          ? _value.forecastData
          : forecastData // ignore: cast_nullable_to_non_nullable
              as ForecastModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedLoadingImpl implements StartedLoading {
  const _$StartedLoadingImpl(
      {required this.forecastData,
      required this.isLoading,
      required this.isError,
      required this.errorText});

  @override
  final ForecastModel? forecastData;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String errorText;

  @override
  String toString() {
    return 'WeatherScreenState.startedLoading(forecastData: $forecastData, isLoading: $isLoading, isError: $isError, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedLoadingImpl &&
            (identical(other.forecastData, forecastData) ||
                other.forecastData == forecastData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, forecastData, isLoading, isError, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedLoadingImplCopyWith<_$StartedLoadingImpl> get copyWith =>
      __$$StartedLoadingImplCopyWithImpl<_$StartedLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastModel? forecastData, bool isLoading,
            bool isError, String errorText)
        startedLoading,
  }) {
    return startedLoading(forecastData, isLoading, isError, errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastModel? forecastData, bool isLoading, bool isError,
            String errorText)?
        startedLoading,
  }) {
    return startedLoading?.call(forecastData, isLoading, isError, errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastModel? forecastData, bool isLoading, bool isError,
            String errorText)?
        startedLoading,
    required TResult orElse(),
  }) {
    if (startedLoading != null) {
      return startedLoading(forecastData, isLoading, isError, errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedLoading value) startedLoading,
  }) {
    return startedLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedLoading value)? startedLoading,
  }) {
    return startedLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedLoading value)? startedLoading,
    required TResult orElse(),
  }) {
    if (startedLoading != null) {
      return startedLoading(this);
    }
    return orElse();
  }
}

abstract class StartedLoading implements WeatherScreenState {
  const factory StartedLoading(
      {required final ForecastModel? forecastData,
      required final bool isLoading,
      required final bool isError,
      required final String errorText}) = _$StartedLoadingImpl;

  @override
  ForecastModel? get forecastData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorText;
  @override
  @JsonKey(ignore: true)
  _$$StartedLoadingImplCopyWith<_$StartedLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
