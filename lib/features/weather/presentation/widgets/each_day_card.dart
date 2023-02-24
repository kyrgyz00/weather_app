import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:weather_app/internal/helpers/text_helper.dart';

class EachDayCard extends StatelessWidget {
  final String day;
  final String weatherIcon;
  final String maxTemp;
  final String minTemp;
  const EachDayCard({
    Key? key,
    required this.day,
    required this.weatherIcon,
    required this.maxTemp,
    required this.minTemp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 150.w,
          child: Text(
            day,
            style: TextHelper.weekDayText,
          ),
        ),
        Image.asset(
          weatherIcon,
          width: 25.r,
        ),
        Text(
          minTemp,
          style: TextHelper.weekDayText,
        ),
        Text(
          maxTemp,
          style: TextHelper.weekDayText.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
