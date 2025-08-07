import 'package:flutter/material.dart';
import 'package:tugas_ppb/screens/HomePage.dart';
class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
                CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/logo.png'),
           ),
             ]
            ),
            SizedBox(height: 20),
            Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
             Text(
              'Warga',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            // ElevatedButton(onPressed: () {}, child: Text('Follow')),
            // ElevatedButton(onPressed: () {}, child: Text('Logout')),
            InkWell(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
             InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
               child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                    'Pesan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
             ),
              ],
              
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Row(
                      children: [
                            Icon(Icons.email, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text(
                              'Email: www@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text(
                              'Address: 50 Cikunir Street',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.grey[700]),
                            SizedBox(width: 10),
                            Text(
                              'No HP: 896745763801',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                    ),
                   ]
                   ),
                ],
              ),
              ),
            ),
           ],
           ),
      )
      );
  }
}