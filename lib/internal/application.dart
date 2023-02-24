import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/weather/presentation/screens/search_city_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: ((context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(brightness: Brightness.dark),
          home: SearchCityPage(),
        );
      }),
    );
  }
}
