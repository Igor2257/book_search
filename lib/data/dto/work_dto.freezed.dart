// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkDto {

@JsonKey(name: 'key') String get key;@JsonKey(name: 'title') String get title;@JsonKey(name: 'edition_count') int? get editionCount;@JsonKey(name: 'cover_id') int? get coverId;@JsonKey(name: 'cover_edition_key') String? get coverEditionKey;@JsonKey(name: 'subject', fromJson: parseStringList) List<String>? get subjects;@JsonKey(name: 'authors', fromJson: parseAuthors) List<AuthorDto>? get authors;@JsonKey(name: 'first_publish_year') int? get firstPublishYear;@JsonKey(name: 'author_name', fromJson: parseStringList) List<String>? get authorNamesJson;@JsonKey(name: 'description', fromJson: parseDescription) String? get description;
/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkDtoCopyWith<WorkDto> get copyWith => _$WorkDtoCopyWithImpl<WorkDto>(this as WorkDto, _$identity);

  /// Serializes this WorkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkDto&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.editionCount, editionCount) || other.editionCount == editionCount)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&const DeepCollectionEquality().equals(other.authors, authors)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear)&&const DeepCollectionEquality().equals(other.authorNamesJson, authorNamesJson)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,editionCount,coverId,coverEditionKey,const DeepCollectionEquality().hash(subjects),const DeepCollectionEquality().hash(authors),firstPublishYear,const DeepCollectionEquality().hash(authorNamesJson),description);

@override
String toString() {
  return 'WorkDto(key: $key, title: $title, editionCount: $editionCount, coverId: $coverId, coverEditionKey: $coverEditionKey, subjects: $subjects, authors: $authors, firstPublishYear: $firstPublishYear, authorNamesJson: $authorNamesJson, description: $description)';
}


}

/// @nodoc
abstract mixin class $WorkDtoCopyWith<$Res>  {
  factory $WorkDtoCopyWith(WorkDto value, $Res Function(WorkDto) _then) = _$WorkDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'title') String title,@JsonKey(name: 'edition_count') int? editionCount,@JsonKey(name: 'cover_id') int? coverId,@JsonKey(name: 'cover_edition_key') String? coverEditionKey,@JsonKey(name: 'subject', fromJson: parseStringList) List<String>? subjects,@JsonKey(name: 'authors', fromJson: parseAuthors) List<AuthorDto>? authors,@JsonKey(name: 'first_publish_year') int? firstPublishYear,@JsonKey(name: 'author_name', fromJson: parseStringList) List<String>? authorNamesJson,@JsonKey(name: 'description', fromJson: parseDescription) String? description
});




}
/// @nodoc
class _$WorkDtoCopyWithImpl<$Res>
    implements $WorkDtoCopyWith<$Res> {
  _$WorkDtoCopyWithImpl(this._self, this._then);

  final WorkDto _self;
  final $Res Function(WorkDto) _then;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = null,Object? editionCount = freezed,Object? coverId = freezed,Object? coverEditionKey = freezed,Object? subjects = freezed,Object? authors = freezed,Object? firstPublishYear = freezed,Object? authorNamesJson = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,editionCount: freezed == editionCount ? _self.editionCount : editionCount // ignore: cast_nullable_to_non_nullable
as int?,coverId: freezed == coverId ? _self.coverId : coverId // ignore: cast_nullable_to_non_nullable
as int?,coverEditionKey: freezed == coverEditionKey ? _self.coverEditionKey : coverEditionKey // ignore: cast_nullable_to_non_nullable
as String?,subjects: freezed == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>?,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<AuthorDto>?,firstPublishYear: freezed == firstPublishYear ? _self.firstPublishYear : firstPublishYear // ignore: cast_nullable_to_non_nullable
as int?,authorNamesJson: freezed == authorNamesJson ? _self.authorNamesJson : authorNamesJson // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkDto].
extension WorkDtoPatterns on WorkDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkDto value)  $default,){
final _that = this;
switch (_that) {
case _WorkDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkDto value)?  $default,){
final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'edition_count')  int? editionCount, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'subject', fromJson: parseStringList)  List<String>? subjects, @JsonKey(name: 'authors', fromJson: parseAuthors)  List<AuthorDto>? authors, @JsonKey(name: 'first_publish_year')  int? firstPublishYear, @JsonKey(name: 'author_name', fromJson: parseStringList)  List<String>? authorNamesJson, @JsonKey(name: 'description', fromJson: parseDescription)  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that.key,_that.title,_that.editionCount,_that.coverId,_that.coverEditionKey,_that.subjects,_that.authors,_that.firstPublishYear,_that.authorNamesJson,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'edition_count')  int? editionCount, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'subject', fromJson: parseStringList)  List<String>? subjects, @JsonKey(name: 'authors', fromJson: parseAuthors)  List<AuthorDto>? authors, @JsonKey(name: 'first_publish_year')  int? firstPublishYear, @JsonKey(name: 'author_name', fromJson: parseStringList)  List<String>? authorNamesJson, @JsonKey(name: 'description', fromJson: parseDescription)  String? description)  $default,) {final _that = this;
switch (_that) {
case _WorkDto():
return $default(_that.key,_that.title,_that.editionCount,_that.coverId,_that.coverEditionKey,_that.subjects,_that.authors,_that.firstPublishYear,_that.authorNamesJson,_that.description);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'title')  String title, @JsonKey(name: 'edition_count')  int? editionCount, @JsonKey(name: 'cover_id')  int? coverId, @JsonKey(name: 'cover_edition_key')  String? coverEditionKey, @JsonKey(name: 'subject', fromJson: parseStringList)  List<String>? subjects, @JsonKey(name: 'authors', fromJson: parseAuthors)  List<AuthorDto>? authors, @JsonKey(name: 'first_publish_year')  int? firstPublishYear, @JsonKey(name: 'author_name', fromJson: parseStringList)  List<String>? authorNamesJson, @JsonKey(name: 'description', fromJson: parseDescription)  String? description)?  $default,) {final _that = this;
switch (_that) {
case _WorkDto() when $default != null:
return $default(_that.key,_that.title,_that.editionCount,_that.coverId,_that.coverEditionKey,_that.subjects,_that.authors,_that.firstPublishYear,_that.authorNamesJson,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkDto implements WorkDto {
  const _WorkDto({@JsonKey(name: 'key') required this.key, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'edition_count') this.editionCount, @JsonKey(name: 'cover_id') this.coverId, @JsonKey(name: 'cover_edition_key') this.coverEditionKey, @JsonKey(name: 'subject', fromJson: parseStringList) final  List<String>? subjects, @JsonKey(name: 'authors', fromJson: parseAuthors) final  List<AuthorDto>? authors, @JsonKey(name: 'first_publish_year') this.firstPublishYear, @JsonKey(name: 'author_name', fromJson: parseStringList) final  List<String>? authorNamesJson, @JsonKey(name: 'description', fromJson: parseDescription) this.description}): _subjects = subjects,_authors = authors,_authorNamesJson = authorNamesJson;
  factory _WorkDto.fromJson(Map<String, dynamic> json) => _$WorkDtoFromJson(json);

@override@JsonKey(name: 'key') final  String key;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'edition_count') final  int? editionCount;
@override@JsonKey(name: 'cover_id') final  int? coverId;
@override@JsonKey(name: 'cover_edition_key') final  String? coverEditionKey;
 final  List<String>? _subjects;
@override@JsonKey(name: 'subject', fromJson: parseStringList) List<String>? get subjects {
  final value = _subjects;
  if (value == null) return null;
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AuthorDto>? _authors;
@override@JsonKey(name: 'authors', fromJson: parseAuthors) List<AuthorDto>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'first_publish_year') final  int? firstPublishYear;
 final  List<String>? _authorNamesJson;
@override@JsonKey(name: 'author_name', fromJson: parseStringList) List<String>? get authorNamesJson {
  final value = _authorNamesJson;
  if (value == null) return null;
  if (_authorNamesJson is EqualUnmodifiableListView) return _authorNamesJson;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'description', fromJson: parseDescription) final  String? description;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkDtoCopyWith<_WorkDto> get copyWith => __$WorkDtoCopyWithImpl<_WorkDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkDto&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.editionCount, editionCount) || other.editionCount == editionCount)&&(identical(other.coverId, coverId) || other.coverId == coverId)&&(identical(other.coverEditionKey, coverEditionKey) || other.coverEditionKey == coverEditionKey)&&const DeepCollectionEquality().equals(other._subjects, _subjects)&&const DeepCollectionEquality().equals(other._authors, _authors)&&(identical(other.firstPublishYear, firstPublishYear) || other.firstPublishYear == firstPublishYear)&&const DeepCollectionEquality().equals(other._authorNamesJson, _authorNamesJson)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,editionCount,coverId,coverEditionKey,const DeepCollectionEquality().hash(_subjects),const DeepCollectionEquality().hash(_authors),firstPublishYear,const DeepCollectionEquality().hash(_authorNamesJson),description);

@override
String toString() {
  return 'WorkDto(key: $key, title: $title, editionCount: $editionCount, coverId: $coverId, coverEditionKey: $coverEditionKey, subjects: $subjects, authors: $authors, firstPublishYear: $firstPublishYear, authorNamesJson: $authorNamesJson, description: $description)';
}


}

/// @nodoc
abstract mixin class _$WorkDtoCopyWith<$Res> implements $WorkDtoCopyWith<$Res> {
  factory _$WorkDtoCopyWith(_WorkDto value, $Res Function(_WorkDto) _then) = __$WorkDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'title') String title,@JsonKey(name: 'edition_count') int? editionCount,@JsonKey(name: 'cover_id') int? coverId,@JsonKey(name: 'cover_edition_key') String? coverEditionKey,@JsonKey(name: 'subject', fromJson: parseStringList) List<String>? subjects,@JsonKey(name: 'authors', fromJson: parseAuthors) List<AuthorDto>? authors,@JsonKey(name: 'first_publish_year') int? firstPublishYear,@JsonKey(name: 'author_name', fromJson: parseStringList) List<String>? authorNamesJson,@JsonKey(name: 'description', fromJson: parseDescription) String? description
});




}
/// @nodoc
class __$WorkDtoCopyWithImpl<$Res>
    implements _$WorkDtoCopyWith<$Res> {
  __$WorkDtoCopyWithImpl(this._self, this._then);

  final _WorkDto _self;
  final $Res Function(_WorkDto) _then;

/// Create a copy of WorkDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = null,Object? editionCount = freezed,Object? coverId = freezed,Object? coverEditionKey = freezed,Object? subjects = freezed,Object? authors = freezed,Object? firstPublishYear = freezed,Object? authorNamesJson = freezed,Object? description = freezed,}) {
  return _then(_WorkDto(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,editionCount: freezed == editionCount ? _self.editionCount : editionCount // ignore: cast_nullable_to_non_nullable
as int?,coverId: freezed == coverId ? _self.coverId : coverId // ignore: cast_nullable_to_non_nullable
as int?,coverEditionKey: freezed == coverEditionKey ? _self.coverEditionKey : coverEditionKey // ignore: cast_nullable_to_non_nullable
as String?,subjects: freezed == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>?,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<AuthorDto>?,firstPublishYear: freezed == firstPublishYear ? _self.firstPublishYear : firstPublishYear // ignore: cast_nullable_to_non_nullable
as int?,authorNamesJson: freezed == authorNamesJson ? _self._authorNamesJson : authorNamesJson // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
