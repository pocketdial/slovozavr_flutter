import 'package:slovozavr_flutter/feature/data/datasources/words.dart';
import 'package:slovozavr_flutter/feature/data/datasources/words_full.dart';
import 'package:slovozavr_flutter/feature/data/models/word_model.dart';

abstract class WordDataSource {
  WordModel getSecretWord();
  bool checkWord(WordModel wordModel);
}

class WordDataSourceImpl implements WordDataSource {
  @override
  bool checkWord(WordModel wordModel) {
    return WordsFull.isWordExists(wordModel.value);
  }

  @override
  WordModel getSecretWord() {
    return WordModel(Words.getRandomWord());
  }
}
