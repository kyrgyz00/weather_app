import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/internal/helpers/text_helper.dart';

import '../../../../internal/helpers/data_format.dart';
import '../../../../internal/helpers/temperatura_change.dart';

class WeatherInfoCard extends StatelessWidget {
  final String cityname;
  final double temp;
  final String cloudsInfo;
  final String picture;
  final String humidity;
  final String windSpeed;
  final int time;
  final double minTemp;
  final double maxTemp;
  const WeatherInfoCard({
    Key? key,
    required this.cityname,
    required this.temp,
    required this.cloudsInfo,
    required this.picture,
    required this.humidity,
    required this.windSpeed,
    required this.time,
    required this.minTemp,
    required this.maxTemp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  cityname,
                  style: TextHelper.cityText,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "${getTemperature(temp)}°",
                  style: TextHelper.tempText,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo[500]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      cloudsInfo,
                      style: TextHelper.cloudInfoText,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${getTemperature(minTemp).toString()}°",
                      style: TextHelper.min_max_temp_text,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      " ${getTemperature(maxTemp).toString()}°",
                      style: TextHelper.min_max_temp_text,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              picture,
              width: 200.r,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/humidity_icon.png",
                width: 25.r,
                color: Colors.blue[300],
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "$humidity%",
                style: TextHelper.wind_hum_text,
              ),
              Spacer(),
              Text(
                getTimeFormat(time),
                style: TextHelper.mainTimeText.copyWith(
                  color: Colors.amber[800],
                ),
              ),
              Spacer(),
              Image.asset(
                "assets/image/wind_icon.png",
                width: 25.r,
                color: Colors.blue[300],
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "$windSpeed км/ч",
                style: TextHelper.wind_hum_text,
              ),
            ],
          ),
        )
      ],
    );
  }
}
