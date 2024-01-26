import 'package:json_annotation/json_annotation.dart';
part 'data_vo.g.dart';

@JsonSerializable()
class DataVO {
  @JsonKey(name: 'ID Nation')
  final String idNation;
  @JsonKey(name: 'Nation')
  final String nation;
  @JsonKey(name: 'ID Year')
  final int idYear;
  @JsonKey(name: 'Year')
  final String year;
  @JsonKey(name: 'Population')
  final int population;
  @JsonKey(name: 'Slug Nation')
  final String slugNation;

  DataVO(
      {required this.idNation,
      required this.nation,
      required this.idYear,
      required this.year,
      required this.population,
      required this.slugNation});

  factory DataVO.fromJson(Map<String, dynamic> json) => _$DataVOFromJson(json);

  Map<String, dynamic> toJson() => _$DataVOToJson(this);
}
