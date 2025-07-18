import 'package:flutter/material.dart';

import 'calendar/EthiopianCalendar.dart';
import 'calendar/GregorianCalendar.dart';

enum CalendarMode { ecToGc, gcToEc }

class CalendarConverter extends StatefulWidget {
  @override
  _CalendarConverterState createState() => _CalendarConverterState();
}

class _CalendarConverterState extends State<CalendarConverter> {
  TextEditingController _yearController = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  TextEditingController _dayController = TextEditingController();
  CalendarMode _selectedMode = CalendarMode.ecToGc;
  String _convertedResult = '';

  void convert() {
    int year = int.tryParse(_yearController.text) ?? 0;
    int month = int.tryParse(_monthController.text) ?? 0;
    int day = int.tryParse(_dayController.text) ?? 0;

    if (_selectedMode == CalendarMode.ecToGc) {
      // Convert Ethiopian Calendar (EC) to Gregorian Calendar (GC)
      var ec = EthiopianCalendar(year: year, month: month, day: day);
      var gc = ec.toGC();
      _convertedResult =
          'Converted to GC: ${gc.month_name}, ${gc.year}, ${gc.day_name}';
    } else {
      // Convert Gregorian Calendar (GC) to Ethiopian Calendar (EC)
      var gc = GregorianCalendar(year: year, month: month, day: day);
      var ec = gc.toEc();
      _convertedResult =
          'Converted to EC: ${ec.year}, ${ec.month_name}, ${ec.day}';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Converter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Convert from:'),
            DropdownButton<CalendarMode>(
              value: _selectedMode,
              onChanged: (mode) {
                setState(() {
                  _selectedMode = mode!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: CalendarMode.ecToGc,
                  child: Text('Ethiopian Calendar to Gregorian Calendar'),
                ),
                DropdownMenuItem(
                  value: CalendarMode.gcToEc,
                  child: Text('Gregorian Calendar to Ethiopian Calendar'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text('Year:'),
            TextFormField(
              controller: _yearController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            Text('Month:'),
            TextFormField(
              controller: _monthController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10.0),
            Text('Day:'),
            TextFormField(
              controller: _dayController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: convert,
              child: Text('Convert'),
            ),
            SizedBox(height: 20.0),
            Text(_convertedResult),
          ],
        ),
      ),
    );
  }
}
