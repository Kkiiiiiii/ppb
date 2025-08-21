import 'package:flutter/material.dart';
import 'package:tugas_ppb/screens/DetailPembayaran.dart';
import 'package:tugas_ppb/screens/login.dart';
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
            radius: 40,
            backgroundImage: AssetImage('assets/person.jpeg'),
           ),
             ]
            ),
            SizedBox(height: 20),
            Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
             Text(
              'Warga',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
               Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPay()));
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
                  'Riwayat',
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            //  InkWell(
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPay()));
            //   },
            //    child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.purple,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     width: 150,
            //     height: 50,
            //     child: Center(
            //       child: Text(
            //         'Pesan',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            //  ),
            //  const SizedBox(width: 20,),
                InkWell(
              onTap: () {
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()),(route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 150,
                height: 50,
                child: Center(
                  child: Text(
                  'Logout',
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
                    Container(
                      padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(        
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                      height: 50,
                      width: 350,
                      child: Row(
                        children: [
                              Icon(Icons.email, color: const Color.fromARGB(255, 255, 255, 255)),
                              SizedBox(width: 10),
                              Text(
                                'Email: www@gmail.com',
                                style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),
                              ),
                            ],
                          ),
                    ),
                        SizedBox(height: 25),
                        Container(
                          //  margin: EdgeInsets.only(bottom: 14),
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(        
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(15),
                        ),
                        height: 50,
                        width: 350,
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: const Color.fromARGB(255, 255, 255, 255)),
                              SizedBox(width: 10),
                              Text(
                                'Address: 50 Cikunir Street',
                                style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          //  margin: EdgeInsets.only(bottom: 14),
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(        
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(15),
                       ),
                         height: 50,
                         width: 350,
                          child: Row(
                            children: [
                              Icon(Icons.phone, color: const Color.fromARGB(255, 255, 255, 255)),
                              SizedBox(width: 10),
                              Text(
                                'No HP: 896745763801',
                                style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),
                              ),
                            ],
                        ),
                      ),
                   ],
                   ),
                ],
              ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPay()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.purple,
                  ),
                ),
               )
              ],
            ),
           ],
           ),
      )
      );
  }
}