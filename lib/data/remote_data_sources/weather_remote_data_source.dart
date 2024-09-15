import 'package:dio/dio.dart';


class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=79c850a495794de18c4180651241109&q=Katowice&aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=79c850a495794de18c4180651241109&q=$city&aqi=no');
    return response.data;
  }
}
