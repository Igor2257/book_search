// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookDetailsEvent()';
}


}

/// @nodoc
class $BookDetailsEventCopyWith<$Res>  {
$BookDetailsEventCopyWith(BookDetailsEvent _, $Res Function(BookDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [BookDetailsEvent].
extension BookDetailsEventPatterns on BookDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadBookDetails value)?  loadBookDetails,TResult Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadBookDetails() when loadBookDetails != null:
return loadBookDetails(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadBookDetails value)  loadBookDetails,required TResult Function( _ToggleFavoriteStatus value)  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _LoadBookDetails():
return loadBookDetails(_that);case _ToggleFavoriteStatus():
return toggleFavoriteStatus(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadBookDetails value)?  loadBookDetails,TResult? Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _LoadBookDetails() when loadBookDetails != null:
return loadBookDetails(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String workId)?  loadBookDetails,TResult Function( WorkEntity work)?  toggleFavoriteStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadBookDetails() when loadBookDetails != null:
return loadBookDetails(_that.workId);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that.work);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String workId)  loadBookDetails,required TResult Function( WorkEntity work)  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _LoadBookDetails():
return loadBookDetails(_that.workId);case _ToggleFavoriteStatus():
return toggleFavoriteStatus(_that.work);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String workId)?  loadBookDetails,TResult? Function( WorkEntity work)?  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _LoadBookDetails() when loadBookDetails != null:
return loadBookDetails(_that.workId);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that.work);case _:
  return null;

}
}

}

/// @nodoc


class _LoadBookDetails implements BookDetailsEvent {
  const _LoadBookDetails(this.workId);
  

 final  String workId;

/// Create a copy of BookDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadBookDetailsCopyWith<_LoadBookDetails> get copyWith => __$LoadBookDetailsCopyWithImpl<_LoadBookDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadBookDetails&&(identical(other.workId, workId) || other.workId == workId));
}


@override
int get hashCode => Object.hash(runtimeType,workId);

@override
String toString() {
  return 'BookDetailsEvent.loadBookDetails(workId: $workId)';
}


}

/// @nodoc
abstract mixin class _$LoadBookDetailsCopyWith<$Res> implements $BookDetailsEventCopyWith<$Res> {
  factory _$LoadBookDetailsCopyWith(_LoadBookDetails value, $Res Function(_LoadBookDetails) _then) = __$LoadBookDetailsCopyWithImpl;
@useResult
$Res call({
 String workId
});




}
/// @nodoc
class __$LoadBookDetailsCopyWithImpl<$Res>
    implements _$LoadBookDetailsCopyWith<$Res> {
  __$LoadBookDetailsCopyWithImpl(this._self, this._then);

  final _LoadBookDetails _self;
  final $Res Function(_LoadBookDetails) _then;

/// Create a copy of BookDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workId = null,}) {
  return _then(_LoadBookDetails(
null == workId ? _self.workId : workId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleFavoriteStatus implements BookDetailsEvent {
  const _ToggleFavoriteStatus(this.work);
  

 final  WorkEntity work;

/// Create a copy of BookDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteStatusCopyWith<_ToggleFavoriteStatus> get copyWith => __$ToggleFavoriteStatusCopyWithImpl<_ToggleFavoriteStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavoriteStatus&&(identical(other.work, work) || other.work == work));
}


@override
int get hashCode => Object.hash(runtimeType,work);

@override
String toString() {
  return 'BookDetailsEvent.toggleFavoriteStatus(work: $work)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteStatusCopyWith<$Res> implements $BookDetailsEventCopyWith<$Res> {
  factory _$ToggleFavoriteStatusCopyWith(_ToggleFavoriteStatus value, $Res Function(_ToggleFavoriteStatus) _then) = __$ToggleFavoriteStatusCopyWithImpl;
@useResult
$Res call({
 WorkEntity work
});




}
/// @nodoc
class __$ToggleFavoriteStatusCopyWithImpl<$Res>
    implements _$ToggleFavoriteStatusCopyWith<$Res> {
  __$ToggleFavoriteStatusCopyWithImpl(this._self, this._then);

  final _ToggleFavoriteStatus _self;
  final $Res Function(_ToggleFavoriteStatus) _then;

/// Create a copy of BookDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? work = null,}) {
  return _then(_ToggleFavoriteStatus(
null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,
  ));
}


}

/// @nodoc
mixin _$BookDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookDetailsState()';
}


}

/// @nodoc
class $BookDetailsStateCopyWith<$Res>  {
$BookDetailsStateCopyWith(BookDetailsState _, $Res Function(BookDetailsState) __);
}


/// Adds pattern-matching-related methods to [BookDetailsState].
extension BookDetailsStatePatterns on BookDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BookDetailsInitial value)?  initial,TResult Function( _BookDetailsLoading value)?  loading,TResult Function( _BookDetailsLoaded value)?  loaded,TResult Function( _BookDetailsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookDetailsInitial() when initial != null:
return initial(_that);case _BookDetailsLoading() when loading != null:
return loading(_that);case _BookDetailsLoaded() when loaded != null:
return loaded(_that);case _BookDetailsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BookDetailsInitial value)  initial,required TResult Function( _BookDetailsLoading value)  loading,required TResult Function( _BookDetailsLoaded value)  loaded,required TResult Function( _BookDetailsError value)  error,}){
final _that = this;
switch (_that) {
case _BookDetailsInitial():
return initial(_that);case _BookDetailsLoading():
return loading(_that);case _BookDetailsLoaded():
return loaded(_that);case _BookDetailsError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BookDetailsInitial value)?  initial,TResult? Function( _BookDetailsLoading value)?  loading,TResult? Function( _BookDetailsLoaded value)?  loaded,TResult? Function( _BookDetailsError value)?  error,}){
final _that = this;
switch (_that) {
case _BookDetailsInitial() when initial != null:
return initial(_that);case _BookDetailsLoading() when loading != null:
return loading(_that);case _BookDetailsLoaded() when loaded != null:
return loaded(_that);case _BookDetailsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( WorkEntity work)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookDetailsInitial() when initial != null:
return initial();case _BookDetailsLoading() when loading != null:
return loading();case _BookDetailsLoaded() when loaded != null:
return loaded(_that.work);case _BookDetailsError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( WorkEntity work)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _BookDetailsInitial():
return initial();case _BookDetailsLoading():
return loading();case _BookDetailsLoaded():
return loaded(_that.work);case _BookDetailsError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( WorkEntity work)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _BookDetailsInitial() when initial != null:
return initial();case _BookDetailsLoading() when loading != null:
return loading();case _BookDetailsLoaded() when loaded != null:
return loaded(_that.work);case _BookDetailsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _BookDetailsInitial implements BookDetailsState {
  const _BookDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookDetailsState.initial()';
}


}




/// @nodoc


class _BookDetailsLoading implements BookDetailsState {
  const _BookDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookDetailsState.loading()';
}


}




/// @nodoc


class _BookDetailsLoaded implements BookDetailsState {
  const _BookDetailsLoaded(this.work);
  

 final  WorkEntity work;

/// Create a copy of BookDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDetailsLoadedCopyWith<_BookDetailsLoaded> get copyWith => __$BookDetailsLoadedCopyWithImpl<_BookDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetailsLoaded&&(identical(other.work, work) || other.work == work));
}


@override
int get hashCode => Object.hash(runtimeType,work);

@override
String toString() {
  return 'BookDetailsState.loaded(work: $work)';
}


}

/// @nodoc
abstract mixin class _$BookDetailsLoadedCopyWith<$Res> implements $BookDetailsStateCopyWith<$Res> {
  factory _$BookDetailsLoadedCopyWith(_BookDetailsLoaded value, $Res Function(_BookDetailsLoaded) _then) = __$BookDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 WorkEntity work
});




}
/// @nodoc
class __$BookDetailsLoadedCopyWithImpl<$Res>
    implements _$BookDetailsLoadedCopyWith<$Res> {
  __$BookDetailsLoadedCopyWithImpl(this._self, this._then);

  final _BookDetailsLoaded _self;
  final $Res Function(_BookDetailsLoaded) _then;

/// Create a copy of BookDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? work = null,}) {
  return _then(_BookDetailsLoaded(
null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,
  ));
}


}

/// @nodoc


class _BookDetailsError implements BookDetailsState {
  const _BookDetailsError(this.message);
  

 final  String message;

/// Create a copy of BookDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDetailsErrorCopyWith<_BookDetailsError> get copyWith => __$BookDetailsErrorCopyWithImpl<_BookDetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetailsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$BookDetailsErrorCopyWith<$Res> implements $BookDetailsStateCopyWith<$Res> {
  factory _$BookDetailsErrorCopyWith(_BookDetailsError value, $Res Function(_BookDetailsError) _then) = __$BookDetailsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$BookDetailsErrorCopyWithImpl<$Res>
    implements _$BookDetailsErrorCopyWith<$Res> {
  __$BookDetailsErrorCopyWithImpl(this._self, this._then);

  final _BookDetailsError _self;
  final $Res Function(_BookDetailsError) _then;

/// Create a copy of BookDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_BookDetailsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
