import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final spesifikasi ;

  const DetailScreen({Key? key, required this.spesifikasi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(spesifikasi.name),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                spesifikasi.image,
                width: 450,
                height: 450,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            spesifikasi.name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.blueAccent),
          ),
          Text('price: ${spesifikasi.price}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + spesifikasi.spec,
              maxLines: 5,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// menggunakan StatelessWidget karena tidak ada perubahan data yang perlu dipantau dan diperbarui 
// Karena detail spesifikasi tidak berubah dan tidak memerlukan perubahan status internal