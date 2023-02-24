import 'package:flutter/material.dart';

enum WeatherIcons {
  icon01d,
  icon01n,
  icon02d,
  icon02n,
  icon03d,
  icon03n,
  icon04d,
  icon04n,
  icon09d,
  icon09n,
  icon10d,
  icon10n,
  icon11d,
  icon11n,
  icon13d,
  icon13n,
  icon50d,
  icon50n,
  iconDefault,
}

getIcons(
  Enum iconCod,
) {
  switch (iconCod) {
    case WeatherIcons.icon01d:
      return "assets/image/day_clear.png";
    case WeatherIcons.icon01n:
      return "assets/image/clear_night.png";
    case WeatherIcons.icon02d:
      return "assets/image/d_few_clouds.png";
    case WeatherIcons.icon02n:
      return "assets/image/n_few_clouds.png";
    case WeatherIcons.icon03d:
      return "assets/image/cloudy.png";
    case WeatherIcons.icon03n:
      return "assets/image/cloudy.png";
    case WeatherIcons.icon04d:
      return "assets/image/broken_clouds.png";
    case WeatherIcons.icon04n:
      return "assets/image/broken_clouds.png";
    case WeatherIcons.icon09d:
      return "assets/image/shower_rain.png";
    case WeatherIcons.icon09n:
      return "assets/image/shower_rain.png";
    case WeatherIcons.icon10d:
      return "assets/image/day_rain.png";
    case WeatherIcons.icon10n:
      return "assets/image/night_rain.png";
    case WeatherIcons.icon11d:
      return "assets/image/thunder.png";
    case WeatherIcons.icon11n:
      return "assets/image/thunder.png";
    case WeatherIcons.icon13d:
      return "assets/image/snow.png";
    case WeatherIcons.icon13n:
      return "assets/image/snow.png";
    case WeatherIcons.icon50d:
      return "assets/image/snow.png";
    case WeatherIcons.icon50n:
      return "assets/image/snow.png";
    case WeatherIcons.iconDefault:
      return "assets/image/iconDefault.png";
  }
}

WeatherIcons convertIconsToEnum(
  String iconCod,
) {
  switch (iconCod) {
    case "01d":
      return WeatherIcons.icon01d;

    case "01n":
      return WeatherIcons.icon01n;
    case "02d":
      return WeatherIcons.icon02d;
    case "02n":
      return WeatherIcons.icon02n;
    case "03d":
      return WeatherIcons.icon03d;
    case "03n":
      return WeatherIcons.icon03n;
    case "04d":
      return WeatherIcons.icon04d;
    case "04n":
      return WeatherIcons.icon04n;
    case "09d":
      return WeatherIcons.icon09d;
    case "09n":
      return WeatherIcons.icon09n;
    case "10d":
      return WeatherIcons.icon10d;
    case "10n":
      return WeatherIcons.icon10n;
    case "11d":
      return WeatherIcons.icon11d;
    case "11n":
      return WeatherIcons.icon11n;
    case "13d":
      return WeatherIcons.icon13d;
    case "13n":
      return WeatherIcons.icon13n;
    case "50d":
      return WeatherIcons.icon50d;
    case "50n":
      return WeatherIcons.icon50n;
    default:
      return WeatherIcons.iconDefault;
  }
}
