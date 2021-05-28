import 'package:clima/services/location.dart';
import '../services/networking.dart';
import '../screens/loading_screen.dart';

final apikey = '51bd74c62202c54dc393f10c0cc44820';
final locay = 'Armidale,NSW,AU';
final openweatherMap = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$openweatherMap?q=$cityName&appid=$apikey&units=metric';
    NetworkHelper nh = NetworkHelper(url);
    var weatherData = await nh.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.GetCurrentLocation();
    NetworkHelper nh = NetworkHelper('$openweatherMap?q=$locay&appid=$apikey&units=metric');
    var weatherData = await nh.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
