import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title: 'Kit de desenvolvimento de interface de usuário',
          ),
          AnswerWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
          ),
          AnswerWidget(
            title: 'Acho que é uma marca de café do Himalaia',
            isSelected: true,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de desktops que são muito incríveis',
          )
        ],
      ),
    );
  }
}
