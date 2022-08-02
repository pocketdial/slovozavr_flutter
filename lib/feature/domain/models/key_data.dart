import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';

class KeyData extends ChangeNotifier {
  Map<String, Color> keys = {
    'Й': AppColors.keyColorNew,
    'Ц': AppColors.keyColorNew,
    'У': AppColors.keyColorNew,
    'К': AppColors.keyColorNew,
    'Е': AppColors.keyColorNew,
    'Н': AppColors.keyColorNew,
    'Г': AppColors.keyColorNew,
    'Ш': AppColors.keyColorNew,
    'Щ': AppColors.keyColorNew,
    'З': AppColors.keyColorNew,
    'Х': AppColors.keyColorNew,
    'Ъ': AppColors.keyColorNew,
    'Ф': AppColors.keyColorNew,
    'Ы': AppColors.keyColorNew,
    'В': AppColors.keyColorNew,
    'А': AppColors.keyColorNew,
    'П': AppColors.keyColorNew,
    'Р': AppColors.keyColorNew,
    'О': AppColors.keyColorNew,
    'Л': AppColors.keyColorNew,
    'Д': AppColors.keyColorNew,
    'Ж': AppColors.keyColorNew,
    'Э': AppColors.keyColorNew,
    'Я': AppColors.keyColorNew,
    'Ч': AppColors.keyColorNew,
    'С': AppColors.keyColorNew,
    'М': AppColors.keyColorNew,
    'И': AppColors.keyColorNew,
    'Т': AppColors.keyColorNew,
    'Ь': AppColors.keyColorNew,
    'Б': AppColors.keyColorNew,
    'Ю': AppColors.keyColorNew,
  };

  void changeColorUsed(String letter) {
    keys[letter] = AppColors.frameColorNo;
    notifyListeners();
  }

  void changeColorAlmost(String letter) {
    if (keys[letter] != AppColors.frameColorOk) {
      keys[letter] = AppColors.frameColorNear;
      notifyListeners();
    }
  }

  void changeColorOk(String letter) {
    keys[letter] = AppColors.frameColorOk;
    notifyListeners();
  }

  void resetKeysColors() {
    keys.forEach((key, value) {
      keys[key] = AppColors.keyColorNew;
    });
    notifyListeners();
  }
}
