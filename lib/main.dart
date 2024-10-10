import 'package:flutter/material.dart';
import 'package:stamplt_app/features/calender/screens/calender_screen.dart';
import 'package:stamplt_app/features/classroom/screens/classroom_screen.dart';
import 'package:stamplt_app/features/user/screens/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stamplt App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: BaseScreen(),
    );
  }
}

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  _baseScreenState createState() => _baseScreenState();
}

class _baseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ClassroomScreen(),
    CalenderScreen(),
    UserScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            activeIcon: Icon(Icons.account_box),
            label: 'Classrooms',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> partFirst = [
      {'icon': Icons.calendar_month_rounded, 'text': 'Academic Calendar', 'color': Colors.blue},
      {'icon': Icons.contact_mail, 'text': 'Study Plan Card', 'color': Colors.green},
      {'icon': Icons.schedule, 'text': 'Course Schedule', 'color': Colors.red},
      {'icon': Icons.score, 'text': 'Student Score', 'color': Colors.purple},
    ];
    List<Map<String, dynamic>> partSecond = [
      {'icon': Icons.group_work, 'text': 'LMS', 'color': Colors.blue},
      {'icon': Icons.data_thresholding, 'text': 'Data SKPI', 'color': Colors.red},
      {'icon': Icons.location_on, 'text': 'Attendance', 'color': Colors.red},
      {'icon': Icons.workspace_premium_outlined, 'text': 'Competition & Achievements', 'color': Colors.purple},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.only(top: 56, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Politeknik Negeri Malang',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none_outlined, color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhammad Fakhruddin Arif',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'D-IV Teknik Informatika',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Politeknik Negeri Malang',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 42,
                          backgroundColor: Theme.of(context).colorScheme.onPrimary,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              fit: BoxFit.cover,
                              width: 84,
                              height: 84,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.22,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(partFirst.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Define the action when the button is tapped
                                  },
                                  child: Container(
                                    width: 100,
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(partFirst[index]['icon'], color: partFirst[index]['color'], size: 28,),
                                        SizedBox(height: 8),
                                        Text(
                                          partFirst[index]['text'],
                                          style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.center,
                                          softWrap: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(partSecond.length, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Define the action when the button is tapped
                                  },
                                  child: Container(
                                    width: 100,
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(partSecond[index]['icon'], color: partSecond[index]['color'], size: 28,),
                                        SizedBox(height: 8),
                                        Text(
                                          partSecond[index]['text'],
                                          style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.center,
                                          softWrap: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}