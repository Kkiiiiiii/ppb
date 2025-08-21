import 'package:flutter/material.dart';

class DetailPay extends StatelessWidget {
  const DetailPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pembayaran'),
        centerTitle: true,
      ),
    );
  }
}