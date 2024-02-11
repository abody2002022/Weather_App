class WeatherModle {
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStateName;
  WeatherModle(
      {required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});
  factory WeatherModle.fromJson(dynamic data) {
    print(data);
    return WeatherModle(
        temp: data["main"]["temp"],
        maxTemp: data["main"]["temp_max"],
        minTemp: data["main"]["temp_min"],
        weatherStateName: data["weather"][0]["description"]);
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'temp=$temp maxtemp=$maxTemp mintemp=$minTemp weatherState=$weatherStateName';
  }
}
