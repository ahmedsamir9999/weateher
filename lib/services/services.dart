import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weather_model.dart';

class Services
{
  String baseUrl = 'http://api.weatherapi.com/v1' ;
  String apiKey = '5f5a82e615ef483eb81173240231002' ;


  Future<WeatherModel> getWeather({required String city }) async
  {
    Uri url = Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$city&days=1');

   http.Response response = await http.get(url);

 //  Map<String , dynamic> data = jsonDecode(response.body);

   WeatherModel weather = WeatherModel.fromJson( jsonDecode(response.body)) ;

  return weather ;
  }

}