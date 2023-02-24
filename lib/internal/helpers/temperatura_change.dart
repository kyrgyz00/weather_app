getTemperature(double temp) {
  var celc = 273.15;
  var res = temp - celc;
  return res.toInt();
}
