import 'package:json_annotation/json_annotation.dart';
import 'package:usa_population_data_api/data/vos/annotations_vo.dart';
part 'source_vo.g.dart';

@JsonSerializable()
class SourceVO {
  final List<String> measures;
  final AnnotationsVO annotations;
  final String name;
  final List? substitutions;

  SourceVO(
      {required this.measures,
      required this.annotations,
      required this.name,
      required this.substitutions});

  factory SourceVO.fromJson(Map<String, dynamic> json) =>
      _$SourceVOFromJson(json);

  Map<String, dynamic> toJson() => _$SourceVOToJson(this);
}
