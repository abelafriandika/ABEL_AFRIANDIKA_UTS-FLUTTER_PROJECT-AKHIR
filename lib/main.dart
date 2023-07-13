import 'package:flutter/material.dart';
import 'package:project_abel_utts/homescreen.dart';
import 'package:http/http.dart' as http;

void _getDataFromStrapi() async{
  var response = await http.get (Uri.parse("http://localhost:1338/api/stokbarangs"));
  print(response.body);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abel Gadget',
      theme: ThemeData(
      primarySwatch: Colors.blue,visualDensity: VisualDensity.adaptivePlatformDensity,  
    ),
      home: home(),
    );
  }
}


// stateless widget adalah jenis widget yang tidak dapat di rubah 
// statefull widget adalah jenis widget yang bisa dirubah 