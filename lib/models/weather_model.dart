class WeatherModel {
  String? date;
  double? temp;
  double? maxTemp;
  double? minTemp;
  String? weatherStateName;

  WeatherModel(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});

  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['foreCast']?['foreCastday']?[0]?['day'];
    //  date =data['location']['localtime'];
    // temp = jsonData['avgtemp_c'];
    // maxTemp = jsonData['mixtemp_c'];
    // minTemp = jsonData['mintemp_c'];
    // weatherStateName = jsonData['condition']['text'];
    return WeatherModel(
        date: data['location']?['localtime'],
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['mixtemp_c'],
        minTemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'temp =$temp minTemp = $minTemp  date = $date';
  }
}

// class weatherChild extends WeatherModel {
//   weatherChild(
//       {required String? date,
//       required double? temp,
//       required double? maxTemp,
//       required double? minTemp,
//       required String? weatherStateName})
//       : super(
//             date: date!,
//             temp: temp!,
//             maxTemp: maxTemp!,
//             minTemp: minTemp!,
//             weatherStateName: weatherStateName!);
// }
