import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

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
                    Text("Account", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    TextButton(
                        onPressed: () {},
                        child: Text("Request Change Data", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold))
                    )
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Harry Maguire", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        Text("Backend Developer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey)),
                        Text("PT. Stamplt Indonesia", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey)),
                      ],
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(28),
                        image: DecorationImage(image: AssetImage('assets/images/profile.jpg'), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      )
    );
  }
}