import 'package:json_annotation/json_annotation.dart';
import 'package:usa_population_data_api/data/vos/data_vo.dart';
import 'package:usa_population_data_api/data/vos/source_vo.dart';
part 'population_response.g.dart';

@JsonSerializable()
class PopulationResponse {
  final List<DataVO> data;
  final List<SourceVO> source;

  PopulationResponse({required this.data, required this.source});

  factory PopulationResponse.fromJson(Map<String, dynamic> json) =>
      _$PopulationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PopulationResponseToJson(this);
}
