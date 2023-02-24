part of 'city_weather_cubit.dart';


abstract class CityWeatherState {}

class CityWeatherInitial extends CityWeatherState {}

class LoadingState extends CityWeatherState {
  LoadingState();
}

class WeatherFetchedState extends CityWeatherState {
  final CityWeatherModel weather;

  WeatherFetchedState(this.weather);
}

class ErrorState extends CityWeatherState {
  final ErrorsEnum error;
  

  ErrorState(this.error);
}
