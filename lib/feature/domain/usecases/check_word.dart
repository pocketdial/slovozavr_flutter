import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/word_repository.dart';

class CheckWord {
  final WordRepository wordRepository;

  CheckWord(this.wordRepository);

  bool call(WordEntity word) {
    return wordRepository.checkWord(word);
  }
}
