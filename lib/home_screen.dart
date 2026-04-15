import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {
      "title": "Avengers",
      "description": "Siêu anh hùng bảo vệ Trái Đất"
    },
    {
      "title": "Spider Man",
      "description": "Người nhện chiến đấu tội phạm"
    },
    {
      "title": "Batman",
      "description": "Hiệp sĩ bóng đêm Gotham"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [

          // Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),

                SizedBox(height: 10),

                Text(
                  "Khattiyavong Thipphachanh",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "MSSV: 22L24802010950",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // Button About
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.info),
                label: Text("Thông tin sinh viên"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
            ),
          ),

          SizedBox(height: 10),

          // Movie List
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 6,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.movie,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      movies[index]["title"]!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text("Nhấn để xem chi tiết"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detail',
                        arguments: movies[index],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}