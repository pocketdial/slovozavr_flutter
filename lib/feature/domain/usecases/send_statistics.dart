import 'package:slovozavr_flutter/feature/domain/repositories/statistics_repository.dart';

class SendStatistics {
  final StatisticsRepository statisticsRepository;

  SendStatistics(this.statisticsRepository);

  void call(int resultOfGame) {
    statisticsRepository.sendStatistics(resultOfGame);
  }
}
