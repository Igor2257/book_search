// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkDto _$WorkDtoFromJson(Map<String, dynamic> json) => _WorkDto(
  key: json['key'] as String,
  title: json['title'] as String,
  editionCount: (json['edition_count'] as num?)?.toInt(),
  coverId: (json['cover_id'] as num?)?.toInt(),
  coverEditionKey: json['cover_edition_key'] as String?,
  subjects: parseStringList(json['subject']),
  authors: parseAuthors(json['authors']),
  firstPublishYear: (json['first_publish_year'] as num?)?.toInt(),
  authorNamesJson: parseStringList(json['author_name']),
  description: parseDescription(json['description']),
);

Map<String, dynamic> _$WorkDtoToJson(_WorkDto instance) => <String, dynamic>{
  'key': instance.key,
  'title': instance.title,
  'edition_count': instance.editionCount,
  'cover_id': instance.coverId,
  'cover_edition_key': instance.coverEditionKey,
  'subject': instance.subjects,
  'authors': instance.authors,
  'first_publish_year': instance.firstPublishYear,
  'author_name': instance.authorNamesJson,
  'description': instance.description,
};
