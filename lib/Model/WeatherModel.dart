class WeatherModel {
  String? cityname;
  double? temperature;
  int? dt;
  String? country;
  String? description;

  // WeatherModel({this.cityname, this.temperature, this.country});

  WeatherModel.fromjson(Map<String, dynamic> json) {
    cityname = json['name'];
    temperature = json['main']["temp"];
    dt = json['dt'];
    description = json['weather'][0]['main'];
    country = json["sys"]["country"];
  }
}
