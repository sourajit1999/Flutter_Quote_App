import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'templates/item_quote.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: ListHome(),
  ));
}

class ListHome extends StatefulWidget {
  @override
  _ListHomeState createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {

  List<Quote> quotes = [
    Quote.name(text: 'Earth is round', author: "Sourajit Basu"),
    Quote.name(text: 'Flutter is fun', author: "Sourajit Basu"),
    Quote.name(text: 'Earth is round', author: "Sourajit Basu"),
    Quote.name(text: 'Entrepreneurship is hard', author: 'S Basu')
  ];

  // Widget quoteTemplate(Quote quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //can use a function to return the widget or use a stateless widget which produces better optimization
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },)
        ).toList(),
      ),
    );
  }
}




