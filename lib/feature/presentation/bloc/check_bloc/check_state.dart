abstract class CheckWordState {
  const CheckWordState();
}

class CheckEmpty extends CheckWordState {}

class CheckLoading extends CheckWordState {}

class CheckCompleted extends CheckWordState {
  final bool result;

  CheckCompleted(this.result);
}

class CheckError extends CheckWordState {
  final String message;

  CheckError({required this.message});
}
