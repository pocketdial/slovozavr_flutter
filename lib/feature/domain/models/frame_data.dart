import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/game.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame.dart';

class FrameData extends ChangeNotifier {
  final List<List<Frame>> frames = [
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
    [
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew),
      Frame('', AppColors.frameColorNew, AppColors.frameFontColorNew)
    ],
  ];

  void changeLetter(Frame frame, String newLetter) {
    frame.letter = newLetter;
    notifyListeners();
  }

  void changeColor(Frame frame, Color inColour) {
    frame.colour = inColour;
    notifyListeners();
  }

  void changeRowWinColor() {
    for (int i = 0; i < 5; i++) {
      frames[wordCount][i].colour = const Color(0xFF6aaa64);
      notifyListeners();
    }
  }

  void changeFontColor(Frame frame, Color inFColour) {
    frame.fontColour = inFColour;
    notifyListeners();
  }

  void resetFrameData() {
    for (int i = 0; i < 6; i++) {
      for (int j = 0; j < 5; j++) {
        frames[i][j].letter = '';
        frames[i][j].colour = AppColors.frameColorNew;
        notifyListeners();
      }
    }
  }
}
