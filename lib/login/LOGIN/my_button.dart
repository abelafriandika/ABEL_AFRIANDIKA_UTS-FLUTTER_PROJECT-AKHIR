import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_abel_utts/homescreen.dart';

class MyButton extends StatelessWidget {
  //final Function()? onTap;

  const MyButton({
    super.key,
  }); //required this.onTap

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text(
            "MASUK",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
// menggunakan stateless karena widget ini bertanggung jawab hanya untuk menampilkan tampilan tombol (button) dengan konfigurasi tertentu dan tidak memerlukan pemantauan perubahan data.