import 'package:flutter/material.dart';

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("Keranjang"),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Fungsi ini membuat kembali ke halaman sebelumnya
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("ini adalah halaman keranjang")
          ],
        ),
      ),
    );
  }
}
// menggunakan stateless karena untuk sementara widget ini tidak memiliki data yang perlu diubah dan tidak memerlukan pemantauan perubahan status internal.