import 'package:slovozavr_flutter/feature/data/datasources/statistics_data_source.dart';
import 'package:slovozavr_flutter/feature/domain/entities/statistics_entity.dart';
import 'package:slovozavr_flutter/feature/domain/repositories/statistics_repository.dart';

class StatisticsRepositoryImpl implements StatisticsRepository {
  final StatisticsDataSource statisticsDataSource;

  StatisticsRepositoryImpl(this.statisticsDataSource);

  @override
  StatisticsEntity getStatistics() {
    return statisticsDataSource.getStatistics();
  }

  @override
  void sendStatistics(StatisticsEntity statisticsEntity) {
    statisticsDataSource.sendStatistics(statisticsEntity);
  }
}
