import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:weather_app/features/weather/presentation/widgets/general_info_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/hours_weather_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/sun_action_card.dart';
import 'package:weather_app/features/weather/presentation/widgets/weather_info_card_widget.dart';
import 'package:weather_app/features/weather/presentation/widgets/week_weather_card.dart';
import 'package:weather_app/features/weather/data/models/weather_model.dart';

import '../../../../internal/helpers/temperatura_change.dart';
import '../../../../internal/helpers/weather_icon.dart';

class WeatherInfoScreen extends StatefulWidget {
  final CityWeatherModel weatherModel;
  const WeatherInfoScreen({super.key, required this.weatherModel});

  @override
  State<WeatherInfoScreen> createState() => _WeatherInfoScreenState();
}

class _WeatherInfoScreenState extends State<WeatherInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 20.h),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
              ),
            ),
            WeatherInfoCard(
              cityname: widget.weatherModel.name!,
              temp: widget.weatherModel.main!.temp!,
              cloudsInfo: widget.weatherModel.weather![0].description!,
              picture: getIcons(widget.weatherModel.weather![0].icon!),
              humidity: widget.weatherModel.main!.humidity.toString(),
              windSpeed: widget.weatherModel.wind!.speed.toString(),
              time: widget.weatherModel.dt!,
              maxTemp: widget.weatherModel.main!.tempMax!,
              minTemp: widget.weatherModel.main!.tempMin!,
            ),
            SunActionTimeCard(
              sunRise: widget.weatherModel.sys!.sunrise!,
              sunSet: widget.weatherModel.sys!.sunset!,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: HoursWeatherCard(),
            ),
            GeneralnfoCard(
              feels_like_temp:
                  getTemperature(widget.weatherModel.main!.feelsLike!),
              pressure: widget.weatherModel.main!.pressure!,
              sea_level: widget.weatherModel.main!.seaLevel!,
              clouds: widget.weatherModel.clouds!.all!,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: WeeklyWeatherCard(),
            ),
          ],
        ),
      )),
    );
  }
}
