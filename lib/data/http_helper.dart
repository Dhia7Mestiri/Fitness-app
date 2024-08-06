import 'package:globo_fitness/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
 // https://api.openweathermap.org/data/2.5/
 // weather?q=Mahdia,Tunisia&appid=cce8a16358f1c0b0f8e1a1c555e00b35
 final String authority = 'api.openweathermap.org';
 final String path = 'data/2.5/weather';
 final String apiKey = 'cce8a16358f1c0b0f8e1a1c555e00b35';
 
 Future<Weather> getWeather(String location) async {
  Map<String, dynamic> parameters = {'q':location,'appid':apiKey};
  Uri uri  = Uri.https(authority, path,parameters);
  http.Response result  = await http.get(uri);
  Map<String, dynamic> data = json.decode(result.body);
  Weather weather = Weather.fromJson(data);

  return weather;

 }
}