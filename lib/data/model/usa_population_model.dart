import 'package:usa_population_data_api/data/vos/data_vo.dart';
import 'package:usa_population_data_api/network/data_agent/usa_population_data_agent.dart';
import 'package:usa_population_data_api/network/data_agent/usa_population_data_agent_impl.dart';

class USAPopulationModel {
  USAPopulationModel._();
  static final USAPopulationModel _singleton = USAPopulationModel._();
  factory USAPopulationModel() => _singleton;

  final USAPopulationDataAgent _usaPopulationDataAgent =
      USAPopulationDataAgentImpl();

  Future<List<DataVO>> getPopulationData() =>
      _usaPopulationDataAgent.getAllPopulationData();
}
