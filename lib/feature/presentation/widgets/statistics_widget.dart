import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StatisticsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      //insetPadding: EdgeInsets.all(10),
      //insetPadding: EdgeInsets.zero,
      //contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.symmetric(vertical: 270),
      title: Center(
        child: const Text(
          'Статистика игры',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '150',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Сыграно',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 65,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '95%',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Побед всего',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 70,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '150',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Побед подряд сейчас',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                width: 60,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '150',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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
          // const SizedBox(
          //   height: 15,
          // ),
          // Text('Рапределение попыток'),
          // const SizedBox(
          //   height: 15,
          // ),
          // Center(
          //   child: Container(),
          // )
        ],
      ),
    );
  }
}
