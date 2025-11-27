// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectDto {

@JsonKey(name: 'key') String get key;@JsonKey(name: 'name') String get name;@JsonKey(name: 'subject_type') String get subjectType;@JsonKey(name: 'solr_query') String? get solrQuery;@JsonKey(name: 'work_count') int get workCount;@JsonKey(name: 'works') List<WorkDto> get works;
/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectDtoCopyWith<SubjectDto> get copyWith => _$SubjectDtoCopyWithImpl<SubjectDto>(this as SubjectDto, _$identity);

  /// Serializes this SubjectDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectDto&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.solrQuery, solrQuery) || other.solrQuery == solrQuery)&&(identical(other.workCount, workCount) || other.workCount == workCount)&&const DeepCollectionEquality().equals(other.works, works));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,subjectType,solrQuery,workCount,const DeepCollectionEquality().hash(works));

@override
String toString() {
  return 'SubjectDto(key: $key, name: $name, subjectType: $subjectType, solrQuery: $solrQuery, workCount: $workCount, works: $works)';
}


}

/// @nodoc
abstract mixin class $SubjectDtoCopyWith<$Res>  {
  factory $SubjectDtoCopyWith(SubjectDto value, $Res Function(SubjectDto) _then) = _$SubjectDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'name') String name,@JsonKey(name: 'subject_type') String subjectType,@JsonKey(name: 'solr_query') String? solrQuery,@JsonKey(name: 'work_count') int workCount,@JsonKey(name: 'works') List<WorkDto> works
});




}
/// @nodoc
class _$SubjectDtoCopyWithImpl<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  _$SubjectDtoCopyWithImpl(this._self, this._then);

  final SubjectDto _self;
  final $Res Function(SubjectDto) _then;

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? name = null,Object? subjectType = null,Object? solrQuery = freezed,Object? workCount = null,Object? works = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subjectType: null == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as String,solrQuery: freezed == solrQuery ? _self.solrQuery : solrQuery // ignore: cast_nullable_to_non_nullable
as String?,workCount: null == workCount ? _self.workCount : workCount // ignore: cast_nullable_to_non_nullable
as int,works: null == works ? _self.works : works // ignore: cast_nullable_to_non_nullable
as List<WorkDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectDto].
extension SubjectDtoPatterns on SubjectDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectDto value)  $default,){
final _that = this;
switch (_that) {
case _SubjectDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectDto value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'name')  String name, @JsonKey(name: 'subject_type')  String subjectType, @JsonKey(name: 'solr_query')  String? solrQuery, @JsonKey(name: 'work_count')  int workCount, @JsonKey(name: 'works')  List<WorkDto> works)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
return $default(_that.key,_that.name,_that.subjectType,_that.solrQuery,_that.workCount,_that.works);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'name')  String name, @JsonKey(name: 'subject_type')  String subjectType, @JsonKey(name: 'solr_query')  String? solrQuery, @JsonKey(name: 'work_count')  int workCount, @JsonKey(name: 'works')  List<WorkDto> works)  $default,) {final _that = this;
switch (_that) {
case _SubjectDto():
return $default(_that.key,_that.name,_that.subjectType,_that.solrQuery,_that.workCount,_that.works);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'key')  String key, @JsonKey(name: 'name')  String name, @JsonKey(name: 'subject_type')  String subjectType, @JsonKey(name: 'solr_query')  String? solrQuery, @JsonKey(name: 'work_count')  int workCount, @JsonKey(name: 'works')  List<WorkDto> works)?  $default,) {final _that = this;
switch (_that) {
case _SubjectDto() when $default != null:
return $default(_that.key,_that.name,_that.subjectType,_that.solrQuery,_that.workCount,_that.works);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectDto implements SubjectDto {
  const _SubjectDto({@JsonKey(name: 'key') required this.key, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'subject_type') required this.subjectType, @JsonKey(name: 'solr_query') this.solrQuery, @JsonKey(name: 'work_count') required this.workCount, @JsonKey(name: 'works') required final  List<WorkDto> works}): _works = works;
  factory _SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);

@override@JsonKey(name: 'key') final  String key;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'subject_type') final  String subjectType;
@override@JsonKey(name: 'solr_query') final  String? solrQuery;
@override@JsonKey(name: 'work_count') final  int workCount;
 final  List<WorkDto> _works;
@override@JsonKey(name: 'works') List<WorkDto> get works {
  if (_works is EqualUnmodifiableListView) return _works;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_works);
}


/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectDtoCopyWith<_SubjectDto> get copyWith => __$SubjectDtoCopyWithImpl<_SubjectDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectDto&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.solrQuery, solrQuery) || other.solrQuery == solrQuery)&&(identical(other.workCount, workCount) || other.workCount == workCount)&&const DeepCollectionEquality().equals(other._works, _works));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,subjectType,solrQuery,workCount,const DeepCollectionEquality().hash(_works));

@override
String toString() {
  return 'SubjectDto(key: $key, name: $name, subjectType: $subjectType, solrQuery: $solrQuery, workCount: $workCount, works: $works)';
}


}

/// @nodoc
abstract mixin class _$SubjectDtoCopyWith<$Res> implements $SubjectDtoCopyWith<$Res> {
  factory _$SubjectDtoCopyWith(_SubjectDto value, $Res Function(_SubjectDto) _then) = __$SubjectDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key') String key,@JsonKey(name: 'name') String name,@JsonKey(name: 'subject_type') String subjectType,@JsonKey(name: 'solr_query') String? solrQuery,@JsonKey(name: 'work_count') int workCount,@JsonKey(name: 'works') List<WorkDto> works
});




}
/// @nodoc
class __$SubjectDtoCopyWithImpl<$Res>
    implements _$SubjectDtoCopyWith<$Res> {
  __$SubjectDtoCopyWithImpl(this._self, this._then);

  final _SubjectDto _self;
  final $Res Function(_SubjectDto) _then;

/// Create a copy of SubjectDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? name = null,Object? subjectType = null,Object? solrQuery = freezed,Object? workCount = null,Object? works = null,}) {
  return _then(_SubjectDto(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subjectType: null == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as String,solrQuery: freezed == solrQuery ? _self.solrQuery : solrQuery // ignore: cast_nullable_to_non_nullable
as String?,workCount: null == workCount ? _self.workCount : workCount // ignore: cast_nullable_to_non_nullable
as int,works: null == works ? _self._works : works // ignore: cast_nullable_to_non_nullable
as List<WorkDto>,
  ));
}


}

// dart format on
