import 'package:flutter/material.dart';

class RulesDialog extends StatelessWidget {
  const RulesDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Правила игры'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Угадайте загаданное слово с шести попыток.'),
          SizedBox(
            height: 15,
          ),
          Text(
              'После каждой попытки цвет букв будет меняться, чтобы показать какие буквы есть в загаданном слове!'),
          SizedBox(
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
                  color: Color(0xFF6aaa64),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'П',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.white, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
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
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Ч',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'T',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буква '),
                TextSpan(
                    text: 'П',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' есть в загаданном слове и стоит в правильном месте.'),
              ],
            ),
          ),
          SizedBox(
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
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'В',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Г',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.white, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
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
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Н',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буква '),
                TextSpan(
                    text: 'Г',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        ' есть в загаданном слове, но стоит не на том месте.'),
              ],
            ),
          ),
          SizedBox(
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
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'С',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Т',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Е',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Н',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.black, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
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
                  color: Color(0xFF787c7e),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'А',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 40,
                      color: Colors.white, //fontColour,
                      fontWeight: FontWeight.bold,
                      //height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Буквы '),
                TextSpan(
                    text: 'А',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' нет в загаданном слове.'),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Играть'),
        ),
      ],
    );
  }
}
