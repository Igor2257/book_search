// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) => _SubjectDto(
  key: json['key'] as String,
  name: json['name'] as String,
  subjectType: json['subject_type'] as String,
  solrQuery: json['solr_query'] as String?,
  workCount: (json['work_count'] as num).toInt(),
  works: (json['works'] as List<dynamic>)
      .map((e) => WorkDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubjectDtoToJson(_SubjectDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'subject_type': instance.subjectType,
      'solr_query': instance.solrQuery,
      'work_count': instance.workCount,
      'works': instance.works,
    };
