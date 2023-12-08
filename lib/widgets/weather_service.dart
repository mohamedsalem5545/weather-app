import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '3677bed892474b30b7a122242220806';
  Future<WeatherModel> getWeather({required String cityname}) async {
    Uri url = Uri.parse('$baseUrl/forcast.json?key=$apiKey&q=$cityname&day=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    var jsonData = data['foreCast']?['foreCastday']?[0];

    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}
