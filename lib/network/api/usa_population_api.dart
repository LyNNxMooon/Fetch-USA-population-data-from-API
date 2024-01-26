import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:usa_population_data_api/network/api_constant/api_constant.dart';
import 'package:usa_population_data_api/network/response/population_response.dart';
part 'usa_population_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class USAPopulationAPI {
  factory USAPopulationAPI(Dio dio) => _USAPopulationAPI(dio);

  @GET(kEndPointForUSAPopulation)
  Future<PopulationResponse> getPopulationResponse(
      @Query(kQueryParamsKeyForDrillDowns) String drilldowns,
      @Query(kQueryParamsKeyForMeasures) String measures);
}
