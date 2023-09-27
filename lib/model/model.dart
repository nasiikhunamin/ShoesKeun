//shoes product
import 'package:flutter/material.dart';

List<Map<String, dynamic>> shoesProduct = [
  {
    'id': 1,
    'name': 'Nike Free 5.0',
    'tagline': 'Unleash Your Athletic Potential.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Nike Free adalah rangkaian sepatu olahraga yang terkenal karena memberikan perasaan seperti berlari tanpa sepatu. Mereka dirancang untuk memungkinkan kaki bergerak secara alami dan fleksibel.Produk Nike Free hadir dalam berbagai gaya dan variasi untuk berbagai aktivitas olahraga.',
    'price': 2000000,
    'image': 'assets/nikeFree5.png',
    'rating': 4.5
  },
  {
    'id': 2,
    'name': 'Vans Old School',
    'tagline': 'Classic Style, Timeless Comfort.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Vans Old Skool Red adalah sepatu yang menjadi bagian dari sejarah dan warisan merek Vans. Sepatu ini terkenal dengan desain klasik dan karakteristik ikonik yang telah memikat hati generasi setelah generasi.',
    'price': 1500000,
    'image': 'assets/vansOldSchool.png',
    'rating': 4.2
  },
  {
    'id': 3,
    'name': 'Converse CTAS',
    'tagline': 'Timeless Style, Endless Conversations.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Converse CTAS High adalah sepatu olahraga yang telah menjadi simbol budaya pop dan gaya sejak pertama kali diperkenalkan pada tahun 1917. Sepatu ini telah melewati berbagai era dan tetap menjadi salah satu model yang paling diidentifikasi dengan merek Converse. ',
    'price': 2500000,
    'image': 'assets/converseCTAS.png',
    'rating': 4.4
  },
  {
    'id': 4,
    'name': 'Converse 70s',
    'tagline': 'Embrace the Sunshine in Every Step.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Converse Chuck Taylor All Star \'70s High Yellow adalah sepatu yang menampilkan gaya yang terinspirasi dari tahun 1970-an dengan sentuhan modern. Sepatu ini adalah versi yang ditingkatkan dari sepatu Chuck Taylor All Star klasik.',
    'price': 1700000,
    'image': 'assets/70sYellow.png',
    'rating': 4.7
  },
  {
    'id': 5,
    'name': 'Nike Magma',
    'tagline': 'Unleash the Heat Your Style.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Nike Air Max 1 Magma Orange adalah sepatu yang menggabungkan desain klasik dengan elemen-elemen kontemporer yang menarik. Sepatu ini adalah bagian dari warisan Air Max yang terkenal dan menawarkan pengalaman yang nyaman dan gaya yang penuh karakter.',
    'price': 2300000,
    'image': 'assets/airmaxMagma.png',
    'rating': 4.9
  },
  {
    'id': 6,
    'name': 'Converse X CDG',
    'tagline': 'Step into the Future of Fashion.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Converse X CDG adalah sepatu yang lahir dari kolaborasi antara Converse dan Comme des Garçons, yang dikenal dengan desain eksperimental dan kreatifnya. Sepatu ini merupakan perpaduan antara desain klasik Converse dengan estetika avant-garde Comme des Garçons.',
    'price': 1300000,
    'image': 'assets/converseCDG.png',
    'rating': 4.8
  },
  {
    'id': 7,
    'name': 'Nike Legend',
    'tagline': 'Step Up Your Workout with Nike Legend.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Nike Legend Essential 2 adalah sepatu pelatihan yang dirancang untuk memberikan dukungan optimal dan kenyamanan selama sesi pelatihan Anda. Sepatu ini memadukan teknologi terbaru dengan desain yang stylish.',
    'price': 3000000,
    'image': 'assets/legendEssential2.png',
    'rating': 4.0
  },
  {
    'id': 8,
    'name': 'Puma Smash',
    'tagline': 'Timeless Design Meets Modern Comfort.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Puma Smash V2 Low adalah sepatu kasual yang menawarkan kombinasi antara desain yang klasik, kenyamanan, dan gaya yang santai. Sepatu ini dirancang untuk digunakan sehari-hari dan cocok untuk berbagai kesempatan santai.',
    'price': 1700000,
    'image': 'assets/pumaSmash.png',
    'rating': 4.1
  },
  {
    'id': 9,
    'name': 'Adidas EQT',
    'tagline': 'Elevate Your Performance with Adidas EQT.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Adidas EQT Support Adv Primeknit Black adalah sepatu olahraga yang dirancang untuk memberikan kombinasi antara kenyamanan, gaya, dan performa yang optimal.',
    'price': 2390000,
    'image': 'assets/adidasEQT.png',
    'rating': 4.9
  },
  {
    'id': 10,
    'name': 'Nike Kyrie 7',
    'tagline': 'Precision, Power, and Style.',
    'size': ['40', '41', '42', '43', '44', '45'],
    'description':
        'Nike Kyrie 7 adalah sepatu basket yang dirancang untuk memberikan performa unggul di lapangan basket dengan desain yang mencerminkan gaya pribadi Kyrie Irving.',
    'price': 2500000,
    'image': 'assets/nikeKyrie7.png',
    'rating': 5.0
  },
];

//categories
List<String> categoriesProducts = [
  'All',
  'Running',
  'Sneakers',
  'Formal',
  'Csual',
  'Men',
  'Womens',
  'Kids'
];

//profile menu
List<String> menuProfile = [
  'Profile',
  'Address',
  'Orders',
  'Payment',
  'Settings',
  'Log Out'
];

//profile icon
List<Widget> profileIcons = [
  const Icon(Icons.person_outline),
  const Icon(Icons.location_on_outlined),
  const Icon(Icons.shopping_bag_outlined),
  const Icon(Icons.payment),
  const Icon(Icons.settings_outlined),
  const Icon(Icons.logout_outlined)
];
