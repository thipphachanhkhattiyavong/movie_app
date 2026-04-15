import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin sinh viên"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.blue,
                ),

                SizedBox(height: 20),

                Text(
                  "Khattiyavong Thipphachanh",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "MSSV: 22L24802010950",
                  style: TextStyle(fontSize: 18),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Quay lại"),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}