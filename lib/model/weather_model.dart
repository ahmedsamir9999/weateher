

class WeatherModel {
  String? cityName;
  String? date;
  String? temp ;
  String? maxTemp;
  String? minTemp;
  String? status;
  String? iconImage;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.status,
    required this.iconImage,
    required this.temp,
  });

  WeatherModel.fromJson(Map data){

    var jsonLocation = data['location'] ;
    var jsonForecast = data['forecast']['forecastday'][0]['day'] ;
    var jsonCondition = jsonForecast['condition'];

    cityName = jsonLocation['name'].toString() ;
    date = jsonLocation['localtime'].toString() ;
    iconImage = jsonCondition['icon'].toString() ;
    maxTemp = jsonForecast['maxtemp_c'].toString() ;
    minTemp = jsonForecast['mintemp_c'].toString();
    status = jsonCondition['text'].toString() ;
    temp = data['current']['temp_c'].toString() ;
    }

}
