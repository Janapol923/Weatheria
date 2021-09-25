// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherService implements WeatherService {
  _WeatherService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://api.weatherapi.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CurrentWeatherResponse> getCurrentWeather(
      apikey, searchParam, aqi) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'key': apikey,
      r'q': searchParam,
      r'aqi': aqi
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrentWeatherResponse>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'v1/current.json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CurrentWeatherResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
