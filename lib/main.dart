import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Quotely(),
));

class Quotely extends StatefulWidget {
  @override
  _QuotelyState createState() => _QuotelyState();
}

class _QuotelyState extends State<Quotely> {

  List<Quote> quotes = [
    Quote(quote: 'Flutter makes development so simple!', author: 'Abraham Lincoln'),
    Quote(quote: 'We choose to use Flutter and do the other things', author: 'JFK'),
    Quote(quote: 'Like, Scoob...you should use Flutter, man', author: 'Shaggy'),
    Quote(quote: 'Flutter is the Swiss army knife of development', author: 'Cardi B'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotely'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
      ),
    );
  }
}



