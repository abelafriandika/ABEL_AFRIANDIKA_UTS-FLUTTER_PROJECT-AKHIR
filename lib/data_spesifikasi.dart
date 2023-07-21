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
          SizedBox(
            height: 16,
          ),
          Text(
            spesifikasi.name,
            style: TextStyle(
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
              style: TextStyle(
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
