import 'package:json_annotation/json_annotation.dart';
part 'annotations_vo.g.dart';

@JsonSerializable()
class AnnotationsVO {
  @JsonKey(name: 'source_name')
  final String sourceName;
  @JsonKey(name: 'source_description')
  final String sourceDescription;
  @JsonKey(name: 'dataset_name')
  final String datasetName;
  @JsonKey(name: 'dataset_link')
  final String datasetLink;
  @JsonKey(name: 'table_id')
  final String tableId;
  final String topic;
  final String subtopic;

  AnnotationsVO(
      {required this.sourceName,
      required this.sourceDescription,
      required this.datasetName,
      required this.datasetLink,
      required this.tableId,
      required this.topic,
      required this.subtopic});

  factory AnnotationsVO.fromJson(Map<String, dynamic> json) =>
      _$AnnotationsVOFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationsVOToJson(this);
}
