import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/rules_widget.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/statistics_widget.dart';

class AppBarWidget {
  static getAppBar(BuildContext context) {
    return AppBar(
      title: const Text('СЛОВОЗАВР'),
      centerTitle: true,
      titleTextStyle: const TextStyle(
        color: AppColors.appBarText,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: AppColors.appBarBackground,
      leading: IconButton(
        icon: const Icon(
          Icons.repeat,
          color: AppColors.appBarIcons,
        ),
        onPressed: () {
          //showAlert(context, 'Сам перегружай!');
          resetGame(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.bar_chart_outlined,
            size: 30,
            //Icons.assessment_outlined,
            color: AppColors.appBarIcons,
          ),
          onPressed: () {
            // showAlert(context,
            //     'Правила просты донельзя: серый цвет - буква не угадана, жёлтый цвет - угадана, но не на своём месте, зелёный цвет - буква правильная и на своём месте.');
            showDialog(
              context: context,
              builder: (BuildContext context) => StatisticsDialog(),
            );
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.help_outline,
            color: AppColors.appBarIcons,
          ),
          onPressed: () {
            // showAlert(context,
            //     'Правила просты донельзя: серый цвет - буква не угадана, жёлтый цвет - угадана, но не на своём месте, зелёный цвет - буква правильная и на своём месте.');
            showDialog(
              context: context,
              builder: (BuildContext context) => RulesDialog(),
            );
          },
        ),
      ],
    );
  }
}
