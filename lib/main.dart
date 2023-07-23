import 'package:flutter/material.dart';
import 'package:project_abel_utts/login%20page.dart';

void main() {
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
      home: LoginPage(),
    );
  }
}


// stateless widget adalah jenis widget yang tidak dapat di rubah 
// statefull widget adalah jenis widget yang bisa dirubah 