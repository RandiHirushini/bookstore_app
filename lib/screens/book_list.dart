import 'package:flutter/material.dart';
import '../widgets/book_widget.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ceylon Bookstore'),
          backgroundColor: Colors.blueGrey,
        ),

        body: SafeArea(
          child: ListView(
            children: [

              // 1st Book
              BookWidget(
                imagePath: 'assets/images/deep-work.jpg',
                title: 'Deep Work',
                author: 'Cal Newport',
                price: 1400,
              ),

              // 2nd Book
              BookWidget(
                imagePath: 'assets/images/the-5am-club.jpeg',
                title: 'The 5 AM Club',
                author: 'Robin Sharma',
                price: 1200,
              ),

              // 3rd Book
              BookWidget(
                imagePath: 'assets/images/thinking-fast-and-slow.jpeg',
                title: 'Thinking, Fast and Slow',
                author: 'Daniel Kahneman',
                price: 1800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
