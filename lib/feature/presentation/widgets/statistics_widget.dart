import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

String numGames = '0';
int numWinGames = 1;
String ratioGames = '0';
String rowNow = '0';
String rowMax = '0';
String try1 = '0';
String try2 = '0';
String try3 = '0';
String try4 = '0';
String try5 = '0';
String try6 = '0';

class StatisticsDialog extends StatefulWidget {
  @override
  State<StatisticsDialog> createState() => _StatisticsDialogState();
}

class _StatisticsDialogState extends State<StatisticsDialog> {
  @override
  void initState() {
    returnNumberOfGames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.alertDialogs,
      insetPadding: EdgeInsets.symmetric(vertical: 170),
      title: Center(
        child: const Text(
          'Статистика игры',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      //'150',
                      numGames,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Сыграно',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 75,
                height: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$ratioGames%',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Побед всего',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 80,
                height: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      rowNow,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Побед подряд сейчас',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 75,
                height: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      rowMax,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Побед подряд максимум',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 75,
                height: 100,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text('Рапределение попыток'),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('1'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: (int.parse(try1) / numWinGames) * 250 + 12,
                          color: wordCount == 1
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try1 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('2'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: (int.parse(try2) / numWinGames) * 250 + 12,
                          color: wordCount == 2
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try2 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('3'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: ((int.parse(try3) / numWinGames) * 250 < 10)
                              ? 12
                              : (int.parse(try3) / numWinGames) * 250,
                          color: wordCount == 3
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try3 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('4'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: ((int.parse(try4) / numWinGames) * 250 < 10)
                              ? 12
                              : (int.parse(try4) / numWinGames) * 250,
                          color: wordCount == 4
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try4 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('5'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: ((int.parse(try5) / numWinGames) * 250 < 10)
                              ? 12
                              : (int.parse(try5) / numWinGames) * 250,
                          color: wordCount == 5
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try5 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('6'),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 15,
                          width: ((int.parse(try6) / numWinGames) * 250 < 10)
                              ? 12
                              : (int.parse(try6) / numWinGames) * 250,
                          color: wordCount == 6
                              ? AppColors.frameColorOk
                              : AppColors.frameColorNo,
                          child: Text(
                            try6 + ' ',
                            style: TextStyle(
                                color: AppColors.frameFontColorOld,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          alignment: Alignment.centerRight)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> returnNumberOfGames() async {
    print('start returnNumber');

    SharedPreferences.getInstance().then((prefs) async {
      //   final int numberOfGames = prefs.getInt('NUMBER_OF_GAMES') ?? 0;
      //   if (numberOfGames == 0) {
      //     return 0;

      //   } else {
      //       return prefs.getInt('NUMBER_OF_GAMES');
      //       prefs.setInt("NUMBER_OF_GAMES", prefs.getInt('NUMBER_OF_GAMES')! + 1);
      //   }
      // });
      //print(prefs.getInt('NUMBER_OF_GAMES').toString());

      num numOfGames = prefs.getInt('NUMBER_OF_GAMES') ?? 0;
      print(numOfGames);
      num numOfWinGames = prefs.getInt('NUMBER_OF_WIN_GAMES') ?? 0;
      num ratioWinGames = numOfWinGames * 100 ~/ numOfGames;

      setState(() {
        numWinGames = prefs.getInt('NUMBER_OF_WIN_GAMES') ?? 1;
        numGames = numOfGames.toString();
        ratioGames = ratioWinGames.toString();
        rowNow = (prefs.getInt('NUMBER_OF_ROW_NOW_GAMES') ?? 0).toString();
        rowMax = (prefs.getInt('NUMBER_OF_ROW_MAX_GAMES') ?? 0).toString();
        try1 = (prefs.getInt('NUMBER_OF_TRY_1') ?? 0).toString();
        try2 = (prefs.getInt('NUMBER_OF_TRY_2') ?? 0).toString();
        try3 = (prefs.getInt('NUMBER_OF_TRY_3') ?? 0).toString();
        try4 = (prefs.getInt('NUMBER_OF_TRY_4') ?? 0).toString();
        try5 = (prefs.getInt('NUMBER_OF_TRY_5') ?? 0).toString();
        try6 = (prefs.getInt('NUMBER_OF_TRY_6') ?? 0).toString();
      });
    });
  }
}
