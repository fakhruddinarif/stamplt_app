import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> infoList = [
      {'icon': Icons.account_circle_rounded, 'text': 'Personal Info', 'color': Colors.blue},
      {'icon': Icons.people_alt, 'text': 'Family Info', 'color': Colors.green},
      {'icon': Icons.credit_card, 'text': 'KTM Virtual', 'color': Colors.red},
      {'icon': Icons.history, 'text': 'Status and Grade History', 'color': Colors.purple},
    ];

    final List<Map<String, dynamic>> settingList = [
      {'icon': Icons.lock, 'text': 'Change Password', 'color': Colors.blue},
      {'icon': Icons.logout, 'text': 'Logout', 'color': Colors.red},
    ];

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
                  Text("Account", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {},
                    child: Text("Request Change Data", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Muhammad Fakhruddin Arif",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            softWrap: true,
                          ),
                          Text(
                            "D-IV Teknik Informatika",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
                            softWrap: true,
                          ),
                          Text(
                            "Politeknik Negeri Malang",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
                            softWrap: true,
                          ),
                        ],
                      ),
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
              SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Info", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: infoList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(infoList[index]['icon'], color: infoList[index]['color'],),
                        title: Text(infoList[index]['text']),
                        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                        onTap: () {},
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: settingList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(settingList[index]['icon'], color: settingList[index]['color'],),
                        title: Text(settingList[index]['text']),
                        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
                        onTap: () {},
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}