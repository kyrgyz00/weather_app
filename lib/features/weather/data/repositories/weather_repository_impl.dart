import 'dart:developer';

import 'package:weather_app/features/weather/data/models/weather_model.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/features/weather/presentation/logic/weather_cubit/city_weather_cubit.dart';
import 'package:weather_app/internal/helpers/api_requster.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  APIRequester apiRequester = APIRequester();
  @override
  Future<CityWeatherModel> getWeather({required String city}) async {
    try {
      var response = await apiRequester.toGet(
        "/data/2.5/weather",
        dataParam: {
          "q": city,
          "appid": "20de277bfd24db7e71ec9d03f8d7e2b2",
        },
      );

      response.data;
      log(response.data.toString());
      CityWeatherModel weatherModel = CityWeatherModel.fromJson(response.data);

      log("succes");
      return weatherModel;
    } catch (error) {
      log("oshibka");
      log(error.toString());
      rethrow;
    }
  }
}
