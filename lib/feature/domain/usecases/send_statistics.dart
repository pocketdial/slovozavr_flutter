import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/statistics_repository.dart';

class SendStatistics {
  final StatisticsRepository statisticsRepository;

  SendStatistics(this.statisticsRepository);

  void call(StatisticsEntity statisticsEntity) {
    statisticsRepository.sendStatistics(statisticsEntity);
  }
}
