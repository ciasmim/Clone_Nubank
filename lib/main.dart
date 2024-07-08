import 'package:flutter/material.dart';
import 'package:nubank_interface/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
     
    );
  }
}
