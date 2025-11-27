// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookDto _$BookDtoFromJson(Map<String, dynamic> json) => _BookDto(
  title: json['title'] as String,
  description: json['description'] as String?,
  key: json['key'] as String,
  covers:
      (json['covers'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  subjects:
      (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  subjectPlaces:
      (json['subject_places'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  subjectTimes:
      (json['subject_times'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  links:
      (json['links'] as List<dynamic>?)
          ?.map((e) => LinkDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  created: json['created'] as Map<String, dynamic>?,
  lastModified: json['last_modified'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$BookDtoToJson(_BookDto instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'key': instance.key,
  'covers': instance.covers,
  'subjects': instance.subjects,
  'subject_places': instance.subjectPlaces,
  'subject_times': instance.subjectTimes,
  'links': instance.links,
  'created': instance.created,
  'last_modified': instance.lastModified,
};
