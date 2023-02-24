import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

getDateFormat(int date) {
  var dt = DateTime.fromMillisecondsSinceEpoch(date * 1000);
  return DateFormat('d MMMM yyyy').format(dt);
}

getTimeFormat(int time) {
  var tm = DateTime.fromMillisecondsSinceEpoch(time * 1000);
  return DateFormat("HH:mm").format(tm);
}
