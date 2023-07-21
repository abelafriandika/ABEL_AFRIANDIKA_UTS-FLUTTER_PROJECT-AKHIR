class spesifikasi {
  String name, price, spec, image;

  spesifikasi(
      {required this.name,
      required this.price,
      required this.spec,
      required this.image});
}

List<spesifikasi> dataspesifikasi = [
  spesifikasi(
      name: 'iphone11',
      price: '9.6 juta',
      spec: '1. hp terkini 2. idaman para kaum remaja 3. ramah dikantong.',
      image: '/images/iphone.jpeg'),
  spesifikasi(
      name: 'iphone13.',
      price: '17.9 juta',
      spec: '1. hp rekomend 2. flagship dari apple ',
      image: '/images/iphone13.jpeg'),
  spesifikasi(
      name: 'samsungs23ultra',
      price: '18.99 juta',
      spec: '1. Hp Flagship terbaru samsung',
      image: '/images/Samsung_s23_ultra.jpeg'),
  spesifikasi(
      name: 'ROGphone2',
      price: '8 juta ',
      spec: '1. Hp Gaming dari Brand Asus',
      image: '/images/ROG_PHONE_2.jpeg'),
  spesifikasi(
      name: 'iphone14 pro',
      price: '17 juta ',
      spec: '1. Hp terbaru keluaran brand apple',
      image: 'images/iphone-14-pro.jpeg'),
  spesifikasi(
      name: 'laptop asus rog513ih',
      price: '19 juta ',
      spec: '1. laptop gaming keluaran brand asus ',
      image: 'images/rog-g513-ih.jpeg'),
  spesifikasi(
      name: 'laptop asus tuf A15',
      price: '15 juta ',
      spec: '1. laptop gaming keluaran brand asus 2.ramah dikantong ',
      image: 'images/asus-tuf-15.jpeg'),
  spesifikasi(
    name: 'redmi note 8' ,
    price: ' 3 juta ',
    spec: 'ramah dikantong hemat',
    image: 'assets/images/redmi note 8.jpg'),
];
