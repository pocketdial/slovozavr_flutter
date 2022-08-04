import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';

class StatisticsDialog extends StatelessWidget {
  const StatisticsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: const Text(
          'Статистика игры',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Column(
        children: [
          Row(
            children: [
              Text('text1'),
              Text('text2'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Рапределение попыток'),
        ],
      ),
    );
  }
}
