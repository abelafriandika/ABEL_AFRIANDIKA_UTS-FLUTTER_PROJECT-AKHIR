import 'package:flutter/material.dart';
import 'package:project_abel_utts/data_spesifikasi.dart';
import 'package:project_abel_utts/login%20page.dart';
import 'package:project_abel_utts/spesifikasi.dart';
import 'Keranjang_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> quantities = List.filled(dataspesifikasi.length, 0); // List untuk menyimpan nilai angka yang akan diincrement pada setiap item

  void incrementQuantity(int index) {
    setState(() {
      if (quantities[index] < 5) { // Batas maksimal nilai increment menjadi 5
        quantities[index]++;
      }
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (quantities[index] > 0) {
        quantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "KERANJANG")
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 2, 249, 134),
        unselectedItemColor: Color.fromARGB(255, 11, 0, 0),
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 1) { // Jika index yang dipilih adalah 1 (menu "KERANJANG"), maka arahkan ke halaman keranjang
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KeranjangPage(), // Mengarahkan ke KeranjangPage
              ),
            );
          } else if (index == 0) { // Jika index yang dipilih adalah 0 (menu "Home"), maka arahkan ke halaman HomeScreen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home()), // Mengarahkan ke HomeScreen
              (route) => false, // Menghapus semua halaman dari tumpukan kecuali HomeScreen
            );
          }
        },
      ),
      appBar: AppBar(
        title: const Text('Abel Gadget'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()), // Mengarahkan ke HomeScreen
                  (route) => false, // Menghapus semua halaman dari tumpukan kecuali HomeScreen
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: dataspesifikasi.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              spesifikasi: dataspesifikasi[index],
                            ),
                          ),
                        );
                      },
                      child: Image.asset(
                        dataspesifikasi[index].image,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataspesifikasi[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.blueAccent),
                    ),
                    Text('price : ${dataspesifikasi[index].price}'),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => decrementQuantity(index), // Panggil fungsi decrementQuantity dengan index saat tombol diklik
                          icon: Icon(Icons.remove_circle, color: Colors.red),
                        ),
                        Text(
                          "${quantities[index]}", // Tampilkan nilai quantity yang telah diincrement
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () => incrementQuantity(index), // Panggil fungsi incrementQuantity dengan index saat tombol diklik
                          icon: Icon(Icons.add_circle, color: Colors.green),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
//  menggunakan statefull dikarenakan widget ini memiliki data yang perlu diubah dan memerlukan pemantauan perubahan status internal.