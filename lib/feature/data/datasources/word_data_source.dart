import 'package:slovozavr_flutter/feature/data/datasources/words.dart';
import 'package:slovozavr_flutter/feature/data/datasources/words_full.dart';
import 'package:slovozavr_flutter/feature/data/models/word_model.dart';

abstract class WordDataSource {
  WordModel getSecretWord();
  bool checkWord(String word);
}

class WordDataSourceImpl implements WordDataSource {
  @override
  bool checkWord(String word) {
    return WordsFull.isWordExists(word);
  }

  @override
  WordModel getSecretWord() {
    return WordModel(Words.getRandomWord());
  }
}
