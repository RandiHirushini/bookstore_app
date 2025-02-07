import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final double price;

  const BookWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10), 
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),

            // Author
            Text(
              author,
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            // Book Cover Image (From assets)
            Image.asset(
              imagePath,
              height: 180,
              width: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),

            // Row for Price & Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Price 
                Text(
                  "Rs. ${price.toStringAsFixed(0)}",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                ),

                SizedBox(width: 10),

                // Add to Cart Button 
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8), 
                  ),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
