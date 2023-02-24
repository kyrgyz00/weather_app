import 'package:weather_app/features/weather/data/repositories/weather_repository_impl.dart';

import '../../data/models/weather_model.dart';

class WeatherUseCase {
  WeatherRepositoryImpl weatherRepositoryImpl = WeatherRepositoryImpl();
  Future<CityWeatherModel> getWeather({required String city}) =>
      weatherRepositoryImpl.getWeather(city: city);
}
