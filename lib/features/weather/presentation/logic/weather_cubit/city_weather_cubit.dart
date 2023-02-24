

import 'package:bloc/bloc.dart';

import 'package:weather_app/features/weather/domain/use_case/weather_use_case.dart';

import 'package:weather_app/internal/helpers/error_helper.dart';

import 'package:weather_app/features/weather/data/models/weather_model.dart';

part 'city_weather_state.dart';

class CityWeatherCubit extends Cubit<CityWeatherState> {
  CityWeatherCubit() : super(CityWeatherInitial());

  WeatherUseCase useCase = WeatherUseCase();

  Future<void> getWeather({required String city}) async {
    await useCase
        .getWeather(city: city)
        .then((weatherModel) => emit(WeatherFetchedState(weatherModel)))
        .onError((error, stackTrace) {
      if (error is ErrorsEnum) {
        emit(ErrorState(error));
      } else {
        emit(ErrorState(ErrorsEnum.invalidError));
      }
    });
  }
}
