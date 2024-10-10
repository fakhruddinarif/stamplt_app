import 'package:flutter/material.dart';

class ClassroomScreen extends StatelessWidget {
  const ClassroomScreen({Key? key}) : super(key: key);

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
                    Text("Classroom", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 16),

              ],
            ),
          ),
      ),
    );
  }
}