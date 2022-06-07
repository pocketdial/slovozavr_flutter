import 'package:slovozavr_flutter/feature/data/datasources/word_data_source.dart';
import 'package:slovozavr_flutter/feature/data/models/word_model.dart';
import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/word_repository.dart';

class WordRepositoryImpl implements WordRepository {
  final WordDataSource wordDataSource;

  WordRepositoryImpl(this.wordDataSource);

  @override
  bool checkWord(WordEntity word) {
    return wordDataSource.checkWord(word.value);
  }

  @override
  WordEntity getSecretWord() {
    return wordDataSource.getSecretWord();
  }
}
