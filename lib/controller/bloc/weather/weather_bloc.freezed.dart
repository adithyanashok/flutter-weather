// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  String get cityId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId, String token, BuildContext context)
        fetchWeather,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchSmallForcast,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchOtherForcast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_FetchSmallForcast value) fetchSmallForcast,
    required TResult Function(_FetchOtherForcast value) fetchOtherForcast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult? Function(_FetchOtherForcast value)? fetchOtherForcast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult Function(_FetchOtherForcast value)? fetchOtherForcast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({String cityId, String token, BuildContext context});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchWeatherImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$FetchWeatherImplCopyWith(
          _$FetchWeatherImpl value, $Res Function(_$FetchWeatherImpl) then) =
      __$$FetchWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityId, String token, BuildContext context});
}

/// @nodoc
class __$$FetchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchWeatherImpl>
    implements _$$FetchWeatherImplCopyWith<$Res> {
  __$$FetchWeatherImplCopyWithImpl(
      _$FetchWeatherImpl _value, $Res Function(_$FetchWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_$FetchWeatherImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchWeatherImpl implements _FetchWeather {
  const _$FetchWeatherImpl(
      {required this.cityId, required this.token, required this.context});

  @override
  final String cityId;
  @override
  final String token;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'WeatherEvent.fetchWeather(cityId: $cityId, token: $token, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeatherImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId, token, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      __$$FetchWeatherImplCopyWithImpl<_$FetchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId, String token, BuildContext context)
        fetchWeather,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchSmallForcast,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchOtherForcast,
  }) {
    return fetchWeather(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
  }) {
    return fetchWeather?.call(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(cityId, token, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_FetchSmallForcast value) fetchSmallForcast,
    required TResult Function(_FetchOtherForcast value) fetchOtherForcast,
  }) {
    return fetchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult? Function(_FetchOtherForcast value)? fetchOtherForcast,
  }) {
    return fetchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult Function(_FetchOtherForcast value)? fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchWeather != null) {
      return fetchWeather(this);
    }
    return orElse();
  }
}

abstract class _FetchWeather implements WeatherEvent {
  const factory _FetchWeather(
      {required final String cityId,
      required final String token,
      required final BuildContext context}) = _$FetchWeatherImpl;

  @override
  String get cityId;
  @override
  String get token;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeatherImplCopyWith<_$FetchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSmallForcastImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$FetchSmallForcastImplCopyWith(_$FetchSmallForcastImpl value,
          $Res Function(_$FetchSmallForcastImpl) then) =
      __$$FetchSmallForcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityId, String token, BuildContext context});
}

/// @nodoc
class __$$FetchSmallForcastImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchSmallForcastImpl>
    implements _$$FetchSmallForcastImplCopyWith<$Res> {
  __$$FetchSmallForcastImplCopyWithImpl(_$FetchSmallForcastImpl _value,
      $Res Function(_$FetchSmallForcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_$FetchSmallForcastImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchSmallForcastImpl implements _FetchSmallForcast {
  const _$FetchSmallForcastImpl(
      {required this.cityId, required this.token, required this.context});

  @override
  final String cityId;
  @override
  final String token;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'WeatherEvent.fetchSmallForcast(cityId: $cityId, token: $token, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSmallForcastImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId, token, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSmallForcastImplCopyWith<_$FetchSmallForcastImpl> get copyWith =>
      __$$FetchSmallForcastImplCopyWithImpl<_$FetchSmallForcastImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId, String token, BuildContext context)
        fetchWeather,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchSmallForcast,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchOtherForcast,
  }) {
    return fetchSmallForcast(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
  }) {
    return fetchSmallForcast?.call(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchSmallForcast != null) {
      return fetchSmallForcast(cityId, token, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_FetchSmallForcast value) fetchSmallForcast,
    required TResult Function(_FetchOtherForcast value) fetchOtherForcast,
  }) {
    return fetchSmallForcast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult? Function(_FetchOtherForcast value)? fetchOtherForcast,
  }) {
    return fetchSmallForcast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult Function(_FetchOtherForcast value)? fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchSmallForcast != null) {
      return fetchSmallForcast(this);
    }
    return orElse();
  }
}

abstract class _FetchSmallForcast implements WeatherEvent {
  const factory _FetchSmallForcast(
      {required final String cityId,
      required final String token,
      required final BuildContext context}) = _$FetchSmallForcastImpl;

  @override
  String get cityId;
  @override
  String get token;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$FetchSmallForcastImplCopyWith<_$FetchSmallForcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOtherForcastImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$FetchOtherForcastImplCopyWith(_$FetchOtherForcastImpl value,
          $Res Function(_$FetchOtherForcastImpl) then) =
      __$$FetchOtherForcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityId, String token, BuildContext context});
}

/// @nodoc
class __$$FetchOtherForcastImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchOtherForcastImpl>
    implements _$$FetchOtherForcastImplCopyWith<$Res> {
  __$$FetchOtherForcastImplCopyWithImpl(_$FetchOtherForcastImpl _value,
      $Res Function(_$FetchOtherForcastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_$FetchOtherForcastImpl(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchOtherForcastImpl implements _FetchOtherForcast {
  const _$FetchOtherForcastImpl(
      {required this.cityId, required this.token, required this.context});

  @override
  final String cityId;
  @override
  final String token;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'WeatherEvent.fetchOtherForcast(cityId: $cityId, token: $token, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOtherForcastImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId, token, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOtherForcastImplCopyWith<_$FetchOtherForcastImpl> get copyWith =>
      __$$FetchOtherForcastImplCopyWithImpl<_$FetchOtherForcastImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId, String token, BuildContext context)
        fetchWeather,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchSmallForcast,
    required TResult Function(String cityId, String token, BuildContext context)
        fetchOtherForcast,
  }) {
    return fetchOtherForcast(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult? Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
  }) {
    return fetchOtherForcast?.call(cityId, token, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId, String token, BuildContext context)?
        fetchWeather,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchSmallForcast,
    TResult Function(String cityId, String token, BuildContext context)?
        fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchOtherForcast != null) {
      return fetchOtherForcast(cityId, token, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeather value) fetchWeather,
    required TResult Function(_FetchSmallForcast value) fetchSmallForcast,
    required TResult Function(_FetchOtherForcast value) fetchOtherForcast,
  }) {
    return fetchOtherForcast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeather value)? fetchWeather,
    TResult? Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult? Function(_FetchOtherForcast value)? fetchOtherForcast,
  }) {
    return fetchOtherForcast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeather value)? fetchWeather,
    TResult Function(_FetchSmallForcast value)? fetchSmallForcast,
    TResult Function(_FetchOtherForcast value)? fetchOtherForcast,
    required TResult orElse(),
  }) {
    if (fetchOtherForcast != null) {
      return fetchOtherForcast(this);
    }
    return orElse();
  }
}

abstract class _FetchOtherForcast implements WeatherEvent {
  const factory _FetchOtherForcast(
      {required final String cityId,
      required final String token,
      required final BuildContext context}) = _$FetchOtherForcastImpl;

  @override
  String get cityId;
  @override
  String get token;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$FetchOtherForcastImplCopyWith<_$FetchOtherForcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  Weather get weather => throw _privateConstructorUsedError;
  Map<String, dynamic> get smallForcastList =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get otherForcastList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {Weather weather,
      Map<String, dynamic> smallForcastList,
      Map<String, dynamic> otherForcastList});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? smallForcastList = null,
    Object? otherForcastList = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      smallForcastList: null == smallForcastList
          ? _value.smallForcastList
          : smallForcastList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      otherForcastList: null == otherForcastList
          ? _value.otherForcastList
          : otherForcastList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Weather weather,
      Map<String, dynamic> smallForcastList,
      Map<String, dynamic> otherForcastList});

  @override
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? smallForcastList = null,
    Object? otherForcastList = null,
  }) {
    return _then(_$WeatherStateImpl(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      smallForcastList: null == smallForcastList
          ? _value._smallForcastList
          : smallForcastList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      otherForcastList: null == otherForcastList
          ? _value._otherForcastList
          : otherForcastList // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {required this.weather,
      required final Map<String, dynamic> smallForcastList,
      required final Map<String, dynamic> otherForcastList})
      : _smallForcastList = smallForcastList,
        _otherForcastList = otherForcastList;

  @override
  final Weather weather;
  final Map<String, dynamic> _smallForcastList;
  @override
  Map<String, dynamic> get smallForcastList {
    if (_smallForcastList is EqualUnmodifiableMapView) return _smallForcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_smallForcastList);
  }

  final Map<String, dynamic> _otherForcastList;
  @override
  Map<String, dynamic> get otherForcastList {
    if (_otherForcastList is EqualUnmodifiableMapView) return _otherForcastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_otherForcastList);
  }

  @override
  String toString() {
    return 'WeatherState(weather: $weather, smallForcastList: $smallForcastList, otherForcastList: $otherForcastList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.weather, weather) || other.weather == weather) &&
            const DeepCollectionEquality()
                .equals(other._smallForcastList, _smallForcastList) &&
            const DeepCollectionEquality()
                .equals(other._otherForcastList, _otherForcastList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      weather,
      const DeepCollectionEquality().hash(_smallForcastList),
      const DeepCollectionEquality().hash(_otherForcastList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
          {required final Weather weather,
          required final Map<String, dynamic> smallForcastList,
          required final Map<String, dynamic> otherForcastList}) =
      _$WeatherStateImpl;

  @override
  Weather get weather;
  @override
  Map<String, dynamic> get smallForcastList;
  @override
  Map<String, dynamic> get otherForcastList;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
