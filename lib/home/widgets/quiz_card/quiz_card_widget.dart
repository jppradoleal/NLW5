import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String progress;
  final double percentage;

  const QuizCardWidget(
      {Key? key,
      required this.title,
      required this.progress,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  progress,
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(
                  value: percentage,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
