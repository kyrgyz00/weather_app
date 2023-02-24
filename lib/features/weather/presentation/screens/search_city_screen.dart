import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/features/weather/presentation/logic/weather_cubit/city_weather_cubit.dart';
import 'package:weather_app/features/weather/presentation/screens/error_screen.dart';
import 'package:weather_app/features/weather/presentation/screens/info_screen.dart';



class SearchCityPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  SearchCityPage({
    super.key,
  });

  final CityWeatherCubit weatherBloc = CityWeatherCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search city")),
      body: BlocConsumer<CityWeatherCubit, CityWeatherState>(
        bloc: weatherBloc,
        listener: (context, state) {
          if (state is ErrorState) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => ErrorScreen(error: state.error))));
          }
          //   if (state is ErrorState) {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //         SnackBar(content: Text(getErrors(context, state.error))));
          //   }
          if (state is WeatherFetchedState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return WeatherInfoScreen(
                    weatherModel: state.weather,
                  );
                }),
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      hintText: "city",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              state is LoadingState
                  ? SizedBox(
                      height: 40.r,
                      child: const CircularProgressIndicator.adaptive(),
                    )
                  : SizedBox(
                      height: 40.r,
                      child: IconButton(
                          onPressed: () {
                            if (textController.text.isNotEmpty) {
                              weatherBloc.getWeather(city: textController.text);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Заполните поле ввода")));
                            }
                          },
                          icon: Icon(
                            Icons.search_outlined,
                            size: 40,
                          )),
                    )
            ],
          );
        },
      ),
    );
  }
}
