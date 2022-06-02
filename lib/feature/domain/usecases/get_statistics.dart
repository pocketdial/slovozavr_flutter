import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/statistics_repository.dart';

class GetStatistics {
  final StatisticsRepository statisticsRepository;

  GetStatistics(this.statisticsRepository);

  StatisticsEntity call() {
    return statisticsRepository.getStatistics();
  }
}
