import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';

//Widget key(String letter, Color keyColour, Color textColour) {

class KeyButton extends StatelessWidget {
  late String letter;
  late Color keyColour;

  KeyButton(this.letter, this.keyColour);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(2),
        child: TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(4, 16.0, 4, 16),
              primary: keyColour == AppColors.keyColorNew
                  ? Colors.black
                  : Colors.white,
              backgroundColor: keyColour,
              //minimumSize: const Size(45, 1),
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w500)),
          onPressed: () {
            print(isGameStarted);
            if (isGameStarted == true) {
              letterIncrement();
              if (Provider.of<FrameData>(context, listen: false)
                      .frames[wordCount][letterCount]
                      .letter ==
                  '') {
                Provider.of<FrameData>(context, listen: false).changeLetter(
                    Provider.of<FrameData>(context, listen: false)
                        .frames[wordCount][letterCount],
                    letter);
              }
            }
          },
          child: Text(letter),
        ),
      ),
    );
  }
}
