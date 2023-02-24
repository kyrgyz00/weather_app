import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../internal/helpers/data_format.dart';
import '../../../../internal/helpers/text_helper.dart';

class SunActionTimeCard extends StatelessWidget {
  final int sunSet;
  final int sunRise;
  const SunActionTimeCard({
    Key? key,
    required this.sunSet,
    required this.sunRise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/image/sunrise_icon.png",
            width: 40.r,
            color: Colors.amber[800],
          ),
          Text(
            getTimeFormat(sunRise),
            style: TextHelper.sunTimeText,
          ),
          Text(
            getTimeFormat(sunSet),
            style: TextHelper.sunTimeText,
          ),
          Image.asset(
            "assets/image/sunset_icon.png",
            width: 40.r,
            color: Colors.amber[800],
          ),
        ],
      ),
    );
  }
}
