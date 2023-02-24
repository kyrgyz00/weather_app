import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/internal/helpers/text_helper.dart';



class WeekWeatherScreen extends StatelessWidget {
  const WeekWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monday",
                  style: TextHelper.weekDayText,
                ),
                Image.asset(
                  "assets/image/day_snow.png",
                  width: 25.r,
                ),
                Text(
                  "20°",
                  style: TextHelper.weekDayText,
                ),
                Text(
                  "10°",
                  style: TextHelper.weekDayText.copyWith(color: Colors.grey),
                ),
              ],
            );
          }),
          separatorBuilder: ((context, index) {
            return Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            );
          }),
          itemCount: 3),
    );
  }
}
