import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';
import 'package:slovozavr_flutter/feature/domain/models/key_data.dart';
import 'package:slovozavr_flutter/feature/domain/models/words.dart';
import 'package:slovozavr_flutter/feature/domain/models/words_full.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/rules_widget.dart';

int wordCount = 0;
int letterCount = -1;
//String secretWord = Words().getRandomWord();
String secretWord = 'ШАПКА';

void wordIncrement() {
  wordCount++;
}

void letterIncrement() {
  if (letterCount < 4) {
    letterCount++;
  }
}

void checkWord(context) {
  String currentWord = Provider.of<FrameData>(context, listen: false)
          .frames[wordCount][0]
          .letter +
      Provider.of<FrameData>(context, listen: false)
          .frames[wordCount][1]
          .letter +
      Provider.of<FrameData>(context, listen: false)
          .frames[wordCount][2]
          .letter +
      Provider.of<FrameData>(context, listen: false)
          .frames[wordCount][3]
          .letter +
      Provider.of<FrameData>(context, listen: false)
          .frames[wordCount][4]
          .letter;
  if (!FullWords().isWordExists(currentWord)) {
    showAlert(context, 'Извините, слова $currentWord нет в нашей базе :(');
    //showAlert(context, '$currentWord? Не выдумывай, пожалуйста, слова!');
    // for (int i = 0; i < 5; i++) {
    //   Provider.of<FrameData>(context, listen: false).changeLetter(
    //       Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
    //       '');
    // }
    return;
  }
  if (currentWord == secretWord) {
    Provider.of<FrameData>(context, listen: false).changeRowWinColor();
    showWinAlert(context);
  } else {
    checkLetters(context);
  }
  resetCounts();
}

void checkLetters(context) {
  if (wordCount == 5) {
    showAlert(context, 'Ну, почти! Загаданное слово: $secretWord');
  }
  List<String> secretList = secretWord.split('');
  List<String> guessList = [];
  guessList.add(Provider.of<FrameData>(context, listen: false)
      .frames[wordCount][0]
      .letter);
  guessList.add(Provider.of<FrameData>(context, listen: false)
      .frames[wordCount][1]
      .letter);
  guessList.add(Provider.of<FrameData>(context, listen: false)
      .frames[wordCount][2]
      .letter);
  guessList.add(Provider.of<FrameData>(context, listen: false)
      .frames[wordCount][3]
      .letter);
  guessList.add(Provider.of<FrameData>(context, listen: false)
      .frames[wordCount][4]
      .letter);

  for (int i = 0; i < 5; i++) {
    Map<int, String> map = {1: "", 2: "", 3: "", 4: "", 5: ""};

    if (guessList[i] == secretList[i]) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF6aaa64));
      Provider.of<KeyData>(context, listen: false).changeColorOk(guessList[i]);
      secretList[i] = '';
      map[i] = guessList[i];
    } else if (secretList.contains(guessList[i])) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFFc9b458));
      Provider.of<KeyData>(context, listen: false)
          .changeColorAlmost(guessList[i]);
      map[i] = guessList[i];
    } else {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF787c7e));
      Provider.of<KeyData>(context, listen: false)
          .changeColorUsed(guessList[i]);
      map[i] = guessList[i];
    }
  }
}

bool? haveDoubles(String letter) {
  return (letter.allMatches(secretWord).length) > 1;
}

void resetCounts() {
  wordCount++;
  letterCount = -1;
}

void resetGame(context) {
  wordCount = 0;
  letterCount = -1;
  Provider.of<FrameData>(context, listen: false).resetFrameData();
  Provider.of<KeyData>(context, listen: false).resetKeysColors();
  secretWord = Words().getRandomWord();
}

void showAlert(BuildContext context, String alertText) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text(alertText)));
}

void showWinAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Image.asset(
          'images/balloons.png',
          //'images/dino.png',
          width: 80.0,
        ),
        content: Text("Правильно! Поздравляем!"),
        //content: Text("Ну, булка! Ну пирожолла умненькая! :*"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: Theme.of(context).primaryColor,
            child: const Text(
              'Играть ещё',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      );
    },
  );
}

void showDialogIfFirstLoaded(BuildContext context) async {
  SharedPreferences.getInstance().then((prefs) {
    final int dialogOpen = prefs.getInt('dialog_open') ?? 0;
    if (dialogOpen == 0) {
      //show dialog for one time only
      Future.delayed(const Duration(milliseconds: 1000), () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return const RulesDialog();
          },
        );
        prefs.setInt("dialog_open", 1);
      });
    }
  });
}
