import 'package:flutter/material.dart';
import '../../models/verse.dart';
import '../../templates/versecard.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State {

  List<Verses> verses = [
    Verses(verse:"I can do all things through Christ who strengthens me", verseNo: "Phillipian 4:13"),
    Verses(verse:"But he that is joined unto the Lord is one spirit.", verseNo: "1 Chorinthians  6:17"),
    Verses(verse:"but we know that, when he shall appear, we shall be like him; for we shall see him as he is", verseNo: "1 John 3:2"),
    Verses(verse:"Greater love has no one than this: to lay down one's life for one's friends.", verseNo: "John 15:13"),
    Verses(verse:"Now to him who is able to do immeasurably more than all we ask or imagine, according to his power that is at work within us.", verseNo: "Ephesians 3:20"),
    Verses(verse:"The LORD is my light and my salvation; whom shall I fear? The LORD is the stronghold of my life; of whom shall I be afraid?", verseNo: "Psalm 27:12"),
    Verses(verse:"What, then, shall we say in response to these things? If God is for us, who can be against us?", verseNo: "Romans 8:31"),
    Verses(verse:"May the God of hope fill you with all joy and peace as you trust in him, so that you may overflow with hope by the power of the Holy Spirit.", verseNo: "Romans 15:13"),
    Verses(verse:"Be strong, and let your heart take courage, all you who wait for the LORD!", verseNo: "Psalm 31:24"),
    Verses(verse:"Casting all your anxieties on him, because he cares for you.", verseNo: "1 Peter 5:7"),
    Verses(verse:"But Jesus looked at them and said, 'With man this is impossible, but with God all things are possible.'", verseNo: "Matthew 19:26"),
    Verses(verse:"Our faith can move mountains.", verseNo: "Matthews 17:20"),
    Verses(verse:"Give thanks to the LORD for He is good: His love endures forever.", verseNo: "Psalm 107:1"),
    Verses(verse:"Taste and see that the LORD is good; blessed is the one who takes refuge in him.", verseNo: "Psalm 34:8"),
  ];

  Widget verseGenerator(Verses verse) {
    return VerseTemplate(verse : verse);
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text("TODAY'S MANNA"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          // children: verses.map((verse) => Text("${verse.verse} - ${verse.verseNo}\n")).toList()
          children: verses.map((verse) => VerseTemplate(
              verse : verse,
              delete : () {
                setState(() {
                verses.remove(verse);
            });
          })).toList(),
        ),
      ),
    );
  }
  
}
