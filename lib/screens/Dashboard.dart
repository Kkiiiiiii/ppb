import 'package:flutter/material.dart';

class HomeDash extends StatelessWidget {
  const HomeDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                ),
                   width: 150,
                  height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: Text('Pemasukan\n20.000',
                    style: TextStyle(color: Colors.white),
                    ),
                    ),
              Icon(Icons.arrow_circle_up_outlined),
                  ],
                ),
              ),
              SizedBox(width: 25,),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                   width: 150,
                  height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: Text('Pengeluaran\n10.000',
                     style: TextStyle(color: Colors.white),
                    ),
                    ),
              Icon(Icons.arrow_circle_down_outlined),
              SizedBox(height: 15,),
                  ],
                ),
              ),
             ],
            ),
            SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}