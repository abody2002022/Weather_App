import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/Weather_service.dart';

class SearchPage extends StatelessWidget {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a City"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
              onSubmitted: (data) async {
                cityName = data;
                WeatherService service = WeatherService();
                WeatherModle weather =
                    await service.getWeather(cityName: cityName!);
                print(weather);
              },
              decoration: InputDecoration(
                hintText: "Entar search",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(20),
                suffixIcon: Icon(Icons.search),
                label: Text("Search"),
              )),
        ),
      ),
    );
  }
}
