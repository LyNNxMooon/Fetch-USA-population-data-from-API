// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataVO _$DataVOFromJson(Map<String, dynamic> json) => DataVO(
      idNation: json['ID Nation'] as String,
      nation: json['Nation'] as String,
      idYear: json['ID Year'] as int,
      year: json['Year'] as String,
      population: json['Population'] as int,
      slugNation: json['Slug Nation'] as String,
    );

Map<String, dynamic> _$DataVOToJson(DataVO instance) => <String, dynamic>{
      'ID Nation': instance.idNation,
      'Nation': instance.nation,
      'ID Year': instance.idYear,
      'Year': instance.year,
      'Population': instance.population,
      'Slug Nation': instance.slugNation,
    };
