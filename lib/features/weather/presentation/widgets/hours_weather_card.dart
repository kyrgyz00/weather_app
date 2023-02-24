import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoursWeatherCard extends StatelessWidget {
  const HoursWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20.w,
          );
        },
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 80.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey,
                  Colors.blue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.blueGrey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "hours",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  "assets/image/d_few_clouds.png",
                  width: 40.r,
                ),
                Text(
                  "20°",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
