

import 'package:flutter/material.dart';
import 'package:weather_app/internal/helpers/data_format.dart';
import 'package:weather_app/internal/helpers/temperatura_change.dart';
import 'package:weather_app/internal/helpers/weather_icon.dart';

import 'package:weather_app/features/weather/data/models/weather_model.dart';

class InfoScreen extends StatefulWidget {
  final CityWeatherModel weatherModel;
  const InfoScreen({super.key, required this.weatherModel});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context, true);
            ;
          },
        ),
      ),
      backgroundColor: Colors.blue[50],
      body: SafeArea(
          child: Column(
        children: [
          Text(
            getDateFormat(widget.weatherModel.dt!),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              widget.weatherModel.name!,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Text(
            getTimeFormat(widget.weatherModel.dt!),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            getIcons(widget.weatherModel.weather![0].icon!),

            // getIcons(widget.weatherModel.weather![0].icon!),
            width: 200,
            height: 200,
          ),
          Text(
            "${getTemperature(widget.weatherModel.main!.temp!).toString()}°",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.weatherModel.weather![0].description!,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          
        ],
      )),
    );
  }
}
