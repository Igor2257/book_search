// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LinkDto {

 String get url; String get title;
/// Create a copy of LinkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkDtoCopyWith<LinkDto> get copyWith => _$LinkDtoCopyWithImpl<LinkDto>(this as LinkDto, _$identity);

  /// Serializes this LinkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkDto&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,title);

@override
String toString() {
  return 'LinkDto(url: $url, title: $title)';
}


}

/// @nodoc
abstract mixin class $LinkDtoCopyWith<$Res>  {
  factory $LinkDtoCopyWith(LinkDto value, $Res Function(LinkDto) _then) = _$LinkDtoCopyWithImpl;
@useResult
$Res call({
 String url, String title
});




}
/// @nodoc
class _$LinkDtoCopyWithImpl<$Res>
    implements $LinkDtoCopyWith<$Res> {
  _$LinkDtoCopyWithImpl(this._self, this._then);

  final LinkDto _self;
  final $Res Function(LinkDto) _then;

/// Create a copy of LinkDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? title = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkDto].
extension LinkDtoPatterns on LinkDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkDto value)  $default,){
final _that = this;
switch (_that) {
case _LinkDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkDto value)?  $default,){
final _that = this;
switch (_that) {
case _LinkDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkDto() when $default != null:
return $default(_that.url,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String title)  $default,) {final _that = this;
switch (_that) {
case _LinkDto():
return $default(_that.url,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String title)?  $default,) {final _that = this;
switch (_that) {
case _LinkDto() when $default != null:
return $default(_that.url,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LinkDto implements LinkDto {
  const _LinkDto({required this.url, required this.title});
  factory _LinkDto.fromJson(Map<String, dynamic> json) => _$LinkDtoFromJson(json);

@override final  String url;
@override final  String title;

/// Create a copy of LinkDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkDtoCopyWith<_LinkDto> get copyWith => __$LinkDtoCopyWithImpl<_LinkDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkDto&&(identical(other.url, url) || other.url == url)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,title);

@override
String toString() {
  return 'LinkDto(url: $url, title: $title)';
}


}

/// @nodoc
abstract mixin class _$LinkDtoCopyWith<$Res> implements $LinkDtoCopyWith<$Res> {
  factory _$LinkDtoCopyWith(_LinkDto value, $Res Function(_LinkDto) _then) = __$LinkDtoCopyWithImpl;
@override @useResult
$Res call({
 String url, String title
});




}
/// @nodoc
class __$LinkDtoCopyWithImpl<$Res>
    implements _$LinkDtoCopyWith<$Res> {
  __$LinkDtoCopyWithImpl(this._self, this._then);

  final _LinkDto _self;
  final $Res Function(_LinkDto) _then;

/// Create a copy of LinkDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? title = null,}) {
  return _then(_LinkDto(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
