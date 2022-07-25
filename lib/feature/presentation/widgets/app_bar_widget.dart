import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';

class AppBarWidget {
  static getAppBar() {
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
          //resetGame(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.help_outline,
            color: AppColors.appBarIcons,
          ),
          onPressed: () {
            // showAlert(context,
            //     'Правила просты донельзя: серый цвет - буква не угадана, жёлтый цвет - угадана, но не на своём месте, зелёный цвет - буква правильная и на своём месте.');
            // showDialog(
            //   context: context,
            //   builder: (BuildContext context) => _buildRulesDialog(context),
            // );
          },
        ),
      ],
    );
  }
}
