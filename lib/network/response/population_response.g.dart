// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'population_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopulationResponse _$PopulationResponseFromJson(Map<String, dynamic> json) =>
    PopulationResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>)
          .map((e) => SourceVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopulationResponseToJson(PopulationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'source': instance.source,
    };
