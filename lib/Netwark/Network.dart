import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/WeatherModel.dart';

class Network {
  //Getting Data
  static Future<void> getcurrebtCity(/*String location*/) async {
    var locationApi = Uri.parse(
      "http://api.openweathermap.org/data/2.5/weather?q=Mogadishu&appid=740faed8637349ad2fab239921969f15",
    );
    var body;
    http.Response response = await http.get(locationApi);
    if (response.statusCode == 200) {
      try {
        body = jsonDecode(response.body);
        print(WeatherModel.fromjson(body).cityname);
        print(WeatherModel.fromjson(body).temperature);
        return body;
      } finally {}
    }
  }

  // static Stream<List<Notes>> readNote() {
  //   // final data = await noteRefrense.get();
  //   return noteRefrense.snapshots().map((snapshot) =>
  //       snapshot.docs.map((doc) => Notes.fromjson(doc.data())).toList());
  // }

  // static String? cityName;
  // Network({this.cityName,});

  static Future getData({required String cityName}) async {
    var api = Uri.encodeFull(
        'http://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=740faed8637349ad2fab239921969f15');

    final response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      try {
        // var city = jsonDecode(response.body)['name'];
        // print(city);
        var body = jsonDecode(response.body);
        // print(WeatherModel.fromjson(body).country);
        return WeatherModel.fromjson(body);
      } catch (e) {
        throw e;
      }
    } else {
      // ignore: todo
      //TODO Solve if the city is not founded
      print(jsonDecode(response.body));
      var ms = jsonDecode(response.body)['message'];
      print(ms);
      return jsonDecode(response.body);
    }
    // return response.statusCode;
  }
}
