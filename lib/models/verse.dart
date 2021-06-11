import 'package:flutter/material.dart';

class Verses {

  String verse;
  String verseNo;

  // Verses(String verse, String verseNo) {
  //     this.verse = verse;
  //     this.verseNo = verseNo;
  // }

  Verses({ this.verse, this.verseNo }); // Named parameters. We can provide args in any order

  @override
  String toString() {
    return "$verse \n \t - $verseNo";
  }
}