import 'package:flutter/material.dart';

import '../component/card/image_card.dart';
import '../data/data.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(title: Text(Data.instance.appBarTitle), backgroundColor: Color(0xFF663377)),
      ],
      body: Scaffold(
        body: ListView.builder(
          itemCount: Data.instance.topics.keys.length,
          itemBuilder: (context, index) => ImageCard(index: index),
        ),
      ),
    );
  }
}
