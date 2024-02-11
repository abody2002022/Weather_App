import 'dart:convert';

//call Api(1)
//save data returned from Api (2)
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String baseUrl = "api.openweathermap.org/data/2.5";
  String API_key = '04f7c0d5fc3a5bb221ebf0915dca58bf';

//Function to get data from database
  Future<WeatherModle> getWeather({required String cityName}) async {
    //return datatype of weatherModel
    //request to api
    Uri url = Uri.parse("$baseUrl/weather?q=$cityName&appid=$API_key");
    //response from Api
    http.Response response = await http.get(url);
    //structure of data returned
    Map<String, dynamic> data = jsonDecode(response.body);
    //returned data Iam needed in my app
    WeatherModle weather = WeatherModle.fromJson(data);

    return weather;
  }
}
