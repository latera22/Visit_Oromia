import 'package:flutter/material.dart';
import 'package:abushakir/abushakir.dart';


import 'calender_converter.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  ETC current = ETC.today();
  ETC now = ETC.today();
  BahireHasab bh = BahireHasab();

  @override
  void initState() {
    super.initState();
    bh = BahireHasab(year: current.year);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var days = current.monthDays().toList();
    var startJump = days[0].last;
    var today = EtDatetime(year: now.year, day: now.day, month: now.month);

    var events = bh.allAtswamat
        .where(
          (element) => element['day']['month'] == current.monthName,
        )
        .toList();

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: const Text('Ethiopian Calendar'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      offset: const Offset(0, 5),
                      color: Colors.white.withOpacity(0.4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.prevMonth;
                            });
                          },
                          icon: const Icon(Icons.chevron_left),
                          iconSize: 30,
                          color: Colors.teal,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = now;
                            });
                          },
                          child: Text(
                            "${current.monthName} ${current.year}",
                            style: const TextStyle(
                              fontSize: 26,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              current = current.nextMonth;
                            });
                          },
                          icon: const Icon(Icons.chevron_right),
                          iconSize: 30,
                          color: Colors.teal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: GridView.count(
                        crossAxisCount: 7,
                        children: now.weekdays
                            .map(
                              (e) => Center(
                                child: Text(
                                  '$e'.substring(0, 2),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 7 * 40,
                      child: GridView.count(crossAxisCount: 7, children: [
                        ...List.filled(startJump, 0)
                            .map(
                              (e) => const Center(
                                child: Text(''),
                              ),
                            )
                            .toList(),
                        ...days
                            .map(
                              (e) => Container(
                                decoration: BoxDecoration(
                                  color: today.compareTo(fromArray(e)) == 0
                                      ? Colors.teal
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '${e[2]}',
                                    style:  TextStyle(
                                      fontSize: 20,
                                      color: today.compareTo(fromArray(e)) == 0
                                          ? Colors.white
                                          : Colors.teal
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CalendarConverter(),
                    ),
                  );
                },
                child: Text('Convert Calendar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  EtDatetime fromArray(List<dynamic> date) {
    return EtDatetime(year: date[0], month: date[1], day: date[2]);
  }
}
