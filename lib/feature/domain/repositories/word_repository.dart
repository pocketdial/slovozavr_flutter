import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';

abstract class WordRepository {
  WordEntity getSecretWord();
  bool checkWord(WordEntity word);
}
