import 'package:flutter/material.dart';
import 'package:quotes/components/quote_item.dart';
import "models/quote.dart";

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Be yourself; everyone else is already taken",author: "Oscar Wilde"),
    Quote(text:  "I have nothing to declare except my genuis",author: "Oscar Wilde"),
    Quote(text: "The truth is rarely pure and never simple",author: "Oscar Wilde")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "Awesome Quotes",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteItem(quote: quote,delete: (){
          setState(() {
              this.quotes.remove(quote);
          });
        },)).toList(),
      )
    );
  }
}
