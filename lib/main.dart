import 'package:flutter/material.dart';
import 'package:flutter_project/screens/details_page.dart';
import 'package:flutter_project/screens/home_page.dart';
import 'package:flutter_project/screens/more_details_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'DetailsPage': (context) => const DetailsPage(),
        'MoreDetailsPage': (context) => const MoreDetailsPage(),
      },
    ),
  );
}
