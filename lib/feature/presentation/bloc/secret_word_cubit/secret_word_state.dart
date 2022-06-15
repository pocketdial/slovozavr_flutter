import 'package:slovozavr_flutter/feature/domain/entities/word_entity.dart';

abstract class SecretWordState {
  const SecretWordState();
}

class SecretWordEmpty extends SecretWordState {}

class SecretWordLoading extends SecretWordState {}

class SecretWordLoaded extends SecretWordState {
  final WordEntity wordEntity;

  SecretWordLoaded(this.wordEntity);
}

class SecretWordError extends SecretWordState {
  final String message;

  SecretWordError({required this.message});
}
