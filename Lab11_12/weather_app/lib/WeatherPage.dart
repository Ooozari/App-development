import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'WeatherModel.dart';
import 'WeatherService.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService weatherService = WeatherService(
    //  apiKey:
  );
  late Weather _currentWeather;
  late String _currentCity;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _getCurrentWeather();
  }

  Future<void> _getCurrentWeather() async {
    try {
      Weather weather = await weatherService.getWeatherByLocation();

      setState(() {
        _currentWeather = weather;
        _currentCity = weather.CityName;
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching weather: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading) SpinKitCircle(color: Colors.blue, size: 50.0),
            if (!isLoading)
              Text(
                'Current City: $_currentCity',
                style: TextStyle(fontSize: 18),
              ),
            SizedBox(height: 20),
            if (!isLoading && _currentWeather != null)
              Text(
                'Temperature: ${_currentWeather.temprature} °C',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
