import 'package:flutter/material.dart';
import 'package:flutterenglishapp/models/day_quesiton.dart';
import 'package:flutterenglishapp/models/day_question_data.dart';
import 'package:flutterenglishapp/screens/detail_page_day/detail_page_day.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.score});
  final int score;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Image.asset('assets/result.png'),
            ),
          ),
          Center(
              child: Text(
                  'Skore : ${widget.score} / ${dayQuestionDataList.length}')),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: Colors.purple,
              minimumSize: Size(200, 32),
            ),
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DayDetailPage()),
                );
              });
            },
            child: const Text('Tekrar Deneyiniz'),
          ),
        ],
      ),
    );
  }
}
