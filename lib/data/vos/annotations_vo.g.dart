// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotations_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnotationsVO _$AnnotationsVOFromJson(Map<String, dynamic> json) =>
    AnnotationsVO(
      sourceName: json['source_name'] as String,
      sourceDescription: json['source_description'] as String,
      datasetName: json['dataset_name'] as String,
      datasetLink: json['dataset_link'] as String,
      tableId: json['table_id'] as String,
      topic: json['topic'] as String,
      subtopic: json['subtopic'] as String,
    );

Map<String, dynamic> _$AnnotationsVOToJson(AnnotationsVO instance) =>
    <String, dynamic>{
      'source_name': instance.sourceName,
      'source_description': instance.sourceDescription,
      'dataset_name': instance.datasetName,
      'dataset_link': instance.datasetLink,
      'table_id': instance.tableId,
      'topic': instance.topic,
      'subtopic': instance.subtopic,
    };
