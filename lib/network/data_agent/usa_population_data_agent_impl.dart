import 'package:dio/dio.dart';
import 'package:usa_population_data_api/data/vos/data_vo.dart';
import 'package:usa_population_data_api/network/api/usa_population_api.dart';
import 'package:usa_population_data_api/network/api_constant/api_constant.dart';
import 'package:usa_population_data_api/network/data_agent/usa_population_data_agent.dart';

class USAPopulationDataAgentImpl extends USAPopulationDataAgent {
  late USAPopulationAPI _usaPopulationAPI;
  USAPopulationDataAgentImpl._() {
    _usaPopulationAPI = USAPopulationAPI(Dio());
  }

  static final USAPopulationDataAgentImpl _singleton =
      USAPopulationDataAgentImpl._();
  factory USAPopulationDataAgentImpl() => _singleton;

  @override
  Future<List<DataVO>> getAllPopulationData() => _usaPopulationAPI
      .getPopulationResponse(
          kQueryParamsDrillDownsValue, kQueryParamsMeasuresValue)
      .asStream()
      .map((event) => event.data)
      .first;
}
