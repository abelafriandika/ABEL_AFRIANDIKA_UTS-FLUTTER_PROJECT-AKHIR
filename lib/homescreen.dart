import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_abel_utts/data_spesifikasi.dart';
import 'package:project_abel_utts/spesifikasi.dart';
import 'package:http/http.dart' as http;


class home extends StatelessWidget {
  
  void _getDataFromStrapi()async{
    var response =await http.get(Uri.parse("http://localhost:1338/api/stokbarangs"));
    var dataJson = await jsonDecode(response.body);
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: _getDataFromStrapi,
        tooltip: 'Increment',
        child: const Icon(Icons.add), 
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
      body: ListView.builder(
          itemCount: dataspesifikasi.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
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
                              onTap: () {},
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
