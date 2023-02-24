import 'package:weather_app/features/weather/data/models/weather_model.dart';

abstract class WeatherRepository {
  Future<CityWeatherModel> getWeather({required String city});
}
