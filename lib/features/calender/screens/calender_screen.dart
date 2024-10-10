import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  String _selectedMonth = 'January';
  final List<String> _months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  int _selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down_rounded),
                      value: _selectedMonth,
                      items: _months.map((String month) {
                        return DropdownMenuItem<String>(
                          value: month,
                          child: Text(month, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedMonth = newValue!;
                        });
                      },
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month_rounded, size: 28,), color: Colors.grey,),
                ],
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(7, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedDay = index;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 96,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: _selectedDay == index ? Theme.of(context).colorScheme.primary : Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(4),
                          color: _selectedDay == index
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.surface,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('MON', style: TextStyle(color: _selectedDay == index ? Theme.of(context).colorScheme.surface : Colors.grey, fontSize: 14, fontWeight: FontWeight.normal)),
                            Text('${index + 1}', style: TextStyle(color: _selectedDay == index ? Theme.of(context).colorScheme.onPrimary : Colors.black, fontSize: 32, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}