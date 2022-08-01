import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';

class RulesDialog extends StatelessWidget {
  const RulesDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Правила игры',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Угадайте загаданное слово с шести попыток.'),
          const SizedBox(
            height: 15,
          ),
          const Text(
              'После каждой попытки цвет букв будет меняться, чтобы показать какие буквы есть в загаданном слове!'),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorOk,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'П',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameColorNo,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'О',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Ч',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.frameFontColorNew,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буква '),
                TextSpan(
                    text: 'П', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' есть в загаданном слове и стоит в правильном месте.'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'В',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xFFc9b458),
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Г',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'О',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Н',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.frameFontColorNew,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буква '),
                TextSpan(
                    text: 'Г', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' есть в загаданном слове, но стоит не на том месте.'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'С',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Т',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Е',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNew,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Н',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameFontColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                margin: const EdgeInsets.all(3.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.frameColorNo,
                  border: Border.all(
                    color: AppColors.frameBorderColor,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: AppColors.frameColorNew,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.frameFontColorNew,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буквы '),
                TextSpan(
                    text: 'А', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' нет в загаданном слове.'),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        // FlatButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   textColor: Theme.of(context).primaryColor,
        //   child: const Text(
        //     'Играть',
        //     style: TextStyle(
        //       fontSize: 20,
        //     ),
        //   ),
        // ),

        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Играть',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
