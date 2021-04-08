import 'package:flutter/material.dart';
import 'package:flutter_list/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  //Constructor with named parameter
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextButton.icon(onPressed: delete,
                  label: Text('Delete'),
                  icon: Icon(Icons.delete))
            ],
          ),
        )
    );
  }
}
