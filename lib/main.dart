import 'package:flutter/material.dart';
import 'screens/book_list.dart'; // Import book list screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Ceylon Bookstore',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BookList(), // Load the book list screen
    );
  }
}
