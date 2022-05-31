import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/word_repository.dart';

class GetSecretWord {
  final WordRepository wordRepository;

  GetSecretWord(this.wordRepository);

  WordEntity call() {
    return wordRepository.getSecretWord();
  }
}
