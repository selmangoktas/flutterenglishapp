import 'package:flutterenglishapp/models/day_quesiton.dart';

final dayQuestionDataList = [
  DayQuestion(
    text: 'Pazartesi günün ingilizcesi nedir?',
    options: [
      Option(text: 'Monday', isCorrect: true),
      Option(text: 'Saturday', isCorrect: false),
      Option(text: 'Friday', isCorrect: false),
      Option(text: 'Tuesday', isCorrect: false),
    ],
  ),
  DayQuestion(
    text: 'Pazar günün ingilizcesi nedir?',
    options: [
      Option(text: 'Monday', isCorrect: false),
      Option(text: 'Sunday', isCorrect: true),
      Option(text: 'Wednesday', isCorrect: false),
      Option(text: 'Tuesday', isCorrect: false),
    ],
  ),
  DayQuestion(
    text: 'Cuma günün ingilizcesi nedir?',
    options: [
      Option(text: 'Wednesday ', isCorrect: false),
      Option(text: 'Sunday', isCorrect: false),
      Option(text: 'Friday', isCorrect: true),
      Option(text: 'Thursday ', isCorrect: false),
    ],
  ),
  DayQuestion(
    text: 'Perşembe günün ingilizcesi nedir?',
    options: [
      Option(text: 'Monday ', isCorrect: false),
      Option(text: 'Sunday', isCorrect: false),
      Option(text: 'Friday', isCorrect: false),
      Option(text: 'Thursday ', isCorrect: true),
    ],
  ),
  DayQuestion(
    text: 'Çarşamba günün ingilizcesi nedir?',
    options: [
      Option(text: 'Monday ', isCorrect: false),
      Option(text: 'Sunday', isCorrect: false),
      Option(text: 'Wednesday', isCorrect: true),
      Option(text: 'Thursday ', isCorrect: false),
    ],
  ),
];
