import 'package:flutter/material.dart';
import "../models/quote.dart";

class QuoteItem extends StatelessWidget {
 final Quote quote;
 final Function delete;

  QuoteItem({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Use null-aware operator to handle null values
            Text(
              '${quote.text ?? "No text available"}',
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              '${quote.author ?? "No author available"}',
              style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
            ),
            TextButton(
                onPressed:(){
                  this.delete();
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete,color: Colors.black,),
                    Text("delete quote",style: TextStyle(color: Colors.black),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
