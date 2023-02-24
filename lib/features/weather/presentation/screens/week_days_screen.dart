import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/weather/presentation/widgets/each_day_card.dart';

class WeekDaysScreen extends StatelessWidget {
  const WeekDaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
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
            EachDayCard(
              day: "Monday",
              weatherIcon: "assets/image/night_snow.png",
              maxTemp: "10°",
              minTemp: "-3°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Tuesday",
              weatherIcon: "assets/image/rain_thunder.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Wednesday",
              weatherIcon: "assets/image/cloudy.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Thursday",
              weatherIcon: "assets/image/cloudy.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Friday",
              weatherIcon: "assets/image/cloudy.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Saturday",
              weatherIcon: "assets/image/cloudy.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
            Divider(
              thickness: 1,
              color: Colors.amber[600],
              height: 20.h,
            ),
            EachDayCard(
              day: "Sunday",
              weatherIcon: "assets/image/cloudy.png",
              maxTemp: "0°",
              minTemp: "8°",
            ),
          ],
        ),
      )),
    );
  }
}
