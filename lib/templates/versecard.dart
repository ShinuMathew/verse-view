import 'package:flutter/material.dart';
import '../models/verse.dart';


class VerseTemplate extends StatelessWidget {

  final Verses verse; // Since it is a stateless widget, states inside it should be final
  final Function delete;

  VerseTemplate({this.verse, this.delete});

  @override
  Widget build(context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              this.verse.verse,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]),
            ),
            SizedBox(height: 6,),
            Text(
              verse.verseNo,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.red[800]
              ),
            ),
            // SizedBox(height: 8,),
            FlatButton.icon(
                onPressed: delete,
                label: Text("Delete"),
                icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }

}