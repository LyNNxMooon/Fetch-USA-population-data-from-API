import 'package:usa_population_data_api/data/vos/data_vo.dart';

abstract class USAPopulationDataAgent {
  Future<List<DataVO>> getAllPopulationData();
}
