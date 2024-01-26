// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceVO _$SourceVOFromJson(Map<String, dynamic> json) => SourceVO(
      measures:
          (json['measures'] as List<dynamic>).map((e) => e as String).toList(),
      annotations:
          AnnotationsVO.fromJson(json['annotations'] as Map<String, dynamic>),
      name: json['name'] as String,
      substitutions: json['substitutions'] as List<dynamic>?,
    );

Map<String, dynamic> _$SourceVOToJson(SourceVO instance) => <String, dynamic>{
      'measures': instance.measures,
      'annotations': instance.annotations,
      'name': instance.name,
      'substitutions': instance.substitutions,
    };
