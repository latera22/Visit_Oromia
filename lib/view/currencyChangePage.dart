import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String API_ID = "2cbf115413ed47d5852af09b9dd1ace0";

const String BASE_URL = "https://openexchangerates.org/api/latest.json";

Future<Map<String, dynamic>> fetchExchangeRates() async {
  final response = await http.get(Uri.parse('$BASE_URL?app_id=$API_ID'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load exchange rates');
  }
}
double convertCurrency(double amount, String from, String to, Map<String, dynamic> rates) {
  double fromRate = rates[from].toDouble(); // cast the integer value to a double value
  double toRate = rates[to].toDouble(); // cast the integer value to a double value

  double exchangeRate = toRate / fromRate;

  double result = amount * exchangeRate;

  return result;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _amountController = TextEditingController();
  String _fromCurrency = "USD";
  String _toCurrency = "ETB";
  double _result = 0.0;

  @override
  void initState() {
    super.initState();

    fetchExchangeRates().then((exchangeRates) {
      setState(() {
        _result = convertCurrency(1.0, "USD", "ETB", exchangeRates["rates"]);
      });
    });
  }

  void _convert() async {
    Map<String, dynamic> exchangeRates = await fetchExchangeRates();

    double amount = double.tryParse(_amountController.text) ?? 0.0;
    _result = convertCurrency(amount, _fromCurrency, _toCurrency, exchangeRates["rates"]);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Currency Converter',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('Currency Converter'),
          ),
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Amount",
                    hintText: "Enter the Amount",
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    DropdownButton<String>(
                      value: _fromCurrency,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _fromCurrency = newValue;
                          });
                        }
                      },
                      items: <String>['USD', 'ETB', 'EUR', 'GBP', 'JPY'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Icon(Icons.arrow_forward),
                    DropdownButton<String>(
                      value: _toCurrency,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _toCurrency = newValue;
                          });
                        }
                      },
                      items: <String>['USD', 'ETB', 'EUR', 'GBP', 'JPY'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  child: Text("Convert"),
                  onPressed: _convert,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Result: ${_result.toStringAsFixed(2)} $_toCurrency",
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}