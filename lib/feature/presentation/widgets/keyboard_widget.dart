import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';
import 'package:slovozavr_flutter/feature/domain/models/key_data.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/key_button_widget.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

//Widget keyboard() {
class Keyboard extends StatelessWidget {
  late AnimationController localAnimationController;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.,
          children: <Widget>[
            KeyButton('Й', Provider.of<KeyData>(context).keys['Й']!),
            KeyButton('Ц', Provider.of<KeyData>(context).keys['Ц']!),
            KeyButton('У', Provider.of<KeyData>(context).keys['У']!),
            KeyButton('К', Provider.of<KeyData>(context).keys['К']!),
            KeyButton('Е', Provider.of<KeyData>(context).keys['Е']!),
            KeyButton('Н', Provider.of<KeyData>(context).keys['Н']!),
            KeyButton('Г', Provider.of<KeyData>(context).keys['Г']!),
            KeyButton('Ш', Provider.of<KeyData>(context).keys['Ш']!),
            KeyButton('Щ', Provider.of<KeyData>(context).keys['Щ']!),
            KeyButton('З', Provider.of<KeyData>(context).keys['З']!),
            KeyButton('Х', Provider.of<KeyData>(context).keys['Х']!),
            KeyButton('Ъ', Provider.of<KeyData>(context).keys['Ъ']!),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            KeyButton('Ф', Provider.of<KeyData>(context).keys['Ф']!),
            KeyButton('Ы', Provider.of<KeyData>(context).keys['Ы']!),
            KeyButton('В', Provider.of<KeyData>(context).keys['В']!),
            KeyButton('А', Provider.of<KeyData>(context).keys['А']!),
            KeyButton('П', Provider.of<KeyData>(context).keys['П']!),
            KeyButton('Р', Provider.of<KeyData>(context).keys['Р']!),
            KeyButton('О', Provider.of<KeyData>(context).keys['О']!),
            KeyButton('Л', Provider.of<KeyData>(context).keys['Л']!),
            KeyButton('Д', Provider.of<KeyData>(context).keys['Д']!),
            KeyButton('Ж', Provider.of<KeyData>(context).keys['Ж']!),
            KeyButton('Э', Provider.of<KeyData>(context).keys['Э']!),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //key('ENTER', Colors.black, Colors.grey),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(8, 16.0, 8, 16),
                  primary: Colors.black,
                  backgroundColor: AppColors.appBarIcons,
                  //minimumSize: const Size(45, 1),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  if (letterCount != 4) {
                    showTopSnackBar(
                      context,
                      const CustomSnackBar.info(
                        message: "Слово должно состоять из 5 букв!",
                      ),
                    );
                  } else {
                    //checkWord(context);
                    switch (checkWord(context)) {
                      case 'win':
                        updateStatistics('win');
                        showTopSnackBar(
                          context,
                          const CustomSnackBar.success(
                            message: "УРА! Правильно!",
                          ),
                        );
                        break;
                      case 'lose':
                        updateStatistics('lose');
                        showTopSnackBar(
                          context,
                          CustomSnackBar.info(
                            message:
                                "Вы проиграли! Загаданное слово: $secretWord",
                          ),
                        );
                        break;
                      case 'notFound':
                        showTopSnackBar(
                          context,
                          const CustomSnackBar.error(
                            message:
                                "Такого слова не существует! (точнее его нет в нашем словаре)",
                          ),
                        );
                        break;
                    }
                  }
                },
                child: const Text('ВВОД'),
              ),
            ),
            KeyButton('Я', Provider.of<KeyData>(context).keys['Я']!),
            KeyButton('Ч', Provider.of<KeyData>(context).keys['Ч']!),
            KeyButton('С', Provider.of<KeyData>(context).keys['С']!),
            KeyButton('М', Provider.of<KeyData>(context).keys['М']!),
            KeyButton('И', Provider.of<KeyData>(context).keys['И']!),
            KeyButton('Т', Provider.of<KeyData>(context).keys['Т']!),
            KeyButton('Ь', Provider.of<KeyData>(context).keys['Ь']!),
            KeyButton('Б', Provider.of<KeyData>(context).keys['Б']!),
            KeyButton('Ю', Provider.of<KeyData>(context).keys['Ю']!),
            //key('DEL', Colors.black, Colors.grey),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(8, 16.0, 8, 16),
                      primary: Colors.black,
                      backgroundColor: AppColors.appBarIcons,
                      //minimumSize: const Size(45, 1),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                  onPressed: () {
                    if (letterCount > -1) {
                      Provider.of<FrameData>(context, listen: false)
                          .changeLetter(
                              Provider.of<FrameData>(context, listen: false)
                                  .frames[wordCount][letterCount],
                              '');
                      letterCount--;
                    }
                  },
                  child: const Icon(
                    Icons.backspace_outlined,
                  ) //Text('DEL'),
                  ),
            ),
          ],
        ),
      ],
    );
  }

  void updateStatistics(String result) async {
    //print('start update');
    final SharedPreferences prefs = await _prefs;
    prefs.setInt("NUMBER_OF_GAMES", (prefs.getInt('NUMBER_OF_GAMES') ?? 0) + 1);
    //print('end update');
    switch (result) {
      case 'win':
        prefs.setInt("NUMBER_OF_TRY_$wordCount",
            (prefs.getInt('NUMBER_OF_TRY_$wordCount') ?? 0) + 1);

        prefs.setInt("NUMBER_OF_WIN_GAMES",
            (prefs.getInt('NUMBER_OF_WIN_GAMES') ?? 0) + 1);
        prefs.setInt("NUMBER_OF_ROW_NOW_GAMES",
            (prefs.getInt('NUMBER_OF_ROW_NOW_GAMES') ?? 0) + 1);

        if ((prefs.getInt('NUMBER_OF_ROW_NOW_GAMES') ?? 0) >
            (prefs.getInt('NUMBER_OF_ROW_MAX_GAMES') ?? 0)) {
          prefs.setInt("NUMBER_OF_ROW_MAX_GAMES",
              (prefs.getInt('NUMBER_OF_ROW_NOW_GAMES') ?? 0));
        }
        break;
      case 'lose':
        prefs.setInt("NUMBER_OF_LOST_GAMES",
            (prefs.getInt('NUMBER_OF_LOST_GAMES') ?? 0) + 1);
        prefs.setInt("NUMBER_OF_ROW_NOW_GAMES", 0);
        break;
    }
  }
}
