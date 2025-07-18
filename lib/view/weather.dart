import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String _cityName = 'New York';
  String _weatherDescription = '';
  int _temperature = 0;
  IconData _weatherIcon = Icons.wb_sunny;

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    final apiKey = 'YOUR_API_KEY';
    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$_cityName&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);

    setState(() {
      _weatherDescription = data['weather'][0]['description'];
      _temperature = data['main']['temp'].round();
      final iconCode = data['weather'][0]['icon'];
      _weatherIcon = getWeatherIcon(iconCode);
    });
  }

  IconData getWeatherIcon(String iconCode) {
    switch (iconCode) {
      case '01d':
        return Icons.wb_sunny;
      case '01n':
        return Icons.brightness_2;
      case '02d':
        return Icons.wb_cloudy;
      case '02n':
        return Icons.cloud_circle_outlined;
      case '03d':
      case '03n':
        return Icons.cloud_outlined;
      case '04d':
      case '04n':
        return Icons.cloud_off_outlined;
      case '09d':
      case '09n':
        return Icons.waves_outlined;
      case '10d':
      case '10n':
        return Icons.beach_access_outlined;
      case '11d':
      case '11n':
        return Icons.flash_on_outlined;
      case '13d':
      case '13n':
        return Icons.ac_unit_outlined;
      case '50d':
      case '50n':
        return Icons.filter_drama_outlined;
      default:
        return Icons.wb_sunny;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _weatherIcon,
                    size: 100,
                    color: Colors.white,
                  ),
                  SizedBox(height: 16),
                  Text(
                    _cityName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _weatherDescription,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '$_temperature°C',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            color: getBackgroundColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
          ),
        ),
      ),
    );
  }

  Color getBackgroundColor() {
    if (_weatherDescription.contains('clear')) {
      return Colors.blue;
    } else if (_weatherDescription.contains('cloud')) {
      return Colors.grey;
    } else if (_weatherDescription.contains('rain') || _weatherDescription.contains('drizzle')) {
      return Colors.lightBlue;
    } else if (_weatherDescription.contains('thunderstorm')) {
      return Colors.deepPurple;
    } else if (_weatherDescription.contains('snow')) {
      return Colors.white;
    } else {
      return Colors.blue;
    }
  }
}