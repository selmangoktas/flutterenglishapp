import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterenglishapp/models/day_quesiton.dart';
import 'package:flutterenglishapp/models/day_question_data.dart';
import 'package:flutterenglishapp/screens/detail_page_day/result_page.dart';

class DayDetailPage extends StatefulWidget {
  const DayDetailPage({super.key});
  @override
  State<DayDetailPage> createState() => _DayDetailPageState();
}

class _DayDetailPageState extends State<DayDetailPage> {
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isLocked = false;
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 32,
            ),
            Text('Question $_questionNumber / ${dayQuestionDataList.length}'),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dayQuestionDataList.length,
                itemBuilder: ((context, index) {
                  var _question = dayQuestionDataList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 32),
                      Text(
                        _question.text,
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Expanded(
                          child: Column(
                        children: _question.options
                            .map((option) => buildOption(_question, option))
                            .toList(),
                      ))
                    ],
                  );
                }),
              ),
            ),
            _isLocked ? buildElevatedButton() : SizedBox.shrink(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildOption(DayQuestion _question, Option option) {
    final color = getColorForOption(option, _question);
    return GestureDetector(
      onTap: () {
        if (_question.isLocked) {
          return;
        } else {
          setState(() {
            _question.isLocked = true;
            _question.selectedOption = option;
          });
          _isLocked = _question.isLocked;
          if (_question.selectedOption!.isCorrect) {
            _score++;
          }
        }
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: TextStyle(fontSize: 20),
            ),
            getIconForOption(option, _question),
          ],
        ),
      ),
    );
  }

  getColorForOption(Option option, DayQuestion question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade300;
  }

  Widget getIconForOption(Option option, DayQuestion question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? Icon(Icons.check_circle, color: Colors.green)
            : Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return SizedBox.shrink();
  }

  buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < dayQuestionDataList.length) {
          _controller.nextPage(
              duration: Duration(
                milliseconds: 250,
              ),
              curve: Curves.easeInExpo);
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(score: _score)));
        }
      },
      child: Text(_questionNumber < dayQuestionDataList.length
          ? 'Next Page'
          : 'See Result'),
    );
  }
}
