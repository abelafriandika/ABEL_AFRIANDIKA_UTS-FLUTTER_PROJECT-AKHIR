import 'package:flutter/material.dart';
import 'package:project_abel_utts/data_spesifikasi.dart';
import 'package:project_abel_utts/login%20page.dart';
import 'package:project_abel_utts/spesifikasi.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket), label: "KERANJANG")
        ],
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 2, 249, 134),
        unselectedItemColor: Color.fromARGB(255, 235, 23, 23),
        showUnselectedLabels: true,
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => home()),
                  ));
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
           ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("KELUAR"),
            onTap: () {
             Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage())
              ); 
            },
          )
        ],
      )),
      body: ListView.builder(
          itemCount: dataspesifikasi.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              spesifikasi: dataspesifikasi[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          dataspesifikasi[index].image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataspesifikasi[index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blueAccent)),
                        Text('price : ${dataspesifikasi[index].price}'),
                        ClipOval(
                          child: Material(
                            color: Colors.blue, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: const SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.shopping_basket,)),
                              onTap: () {}
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
