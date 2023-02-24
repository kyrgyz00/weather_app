import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/weather/presentation/widgets/each_day_card.dart';
import 'package:weather_app/features/weather/presentation/screens/week_days_screen.dart';


class WeeklyWeatherCard extends StatelessWidget {
  const WeeklyWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          day: "Tuesday",
          weatherIcon: "assets/image/rain_thunder.png",
          maxTemp: "0°",
          minTemp: "8°",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 7,
                backgroundColor: Colors.indigo.withOpacity(0.5),
                fixedSize: Size(
                  350.w,
                  50.h,
                )),
            onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return WeekDaysScreen();
              })));
            }),
            child: Text(
              "Прогноз на неделю",
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
      ],
    );
  }
}
