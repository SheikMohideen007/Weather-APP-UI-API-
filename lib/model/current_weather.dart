import 'dart:ffi';

class CurrentWeather {
  final String lastUpdated;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String climate;
  final double windSpeed;
  final int humidity;
  final double uv;

  CurrentWeather(
      {required this.lastUpdated,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.climate,
      required this.windSpeed,
      required this.humidity,
      required this.uv});

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    // print('object... ${json['current']['temp_c'].runtimeType}');
    return CurrentWeather(
        lastUpdated: json['current']['last_updated'] as String,
        temp: json['current']['temp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        climate: json['current']['condition']['text'],
        windSpeed: json['current']['wind_kph'],
        humidity: json['current']['humidity'],
        uv: json['current']['uv']);
  }
}
