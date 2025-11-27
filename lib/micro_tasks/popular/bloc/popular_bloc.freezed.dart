// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularEvent()';
}


}

/// @nodoc
class $PopularEventCopyWith<$Res>  {
$PopularEventCopyWith(PopularEvent _, $Res Function(PopularEvent) __);
}


/// Adds pattern-matching-related methods to [PopularEvent].
extension PopularEventPatterns on PopularEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadPopular value)?  loadPopular,TResult Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadPopular() when loadPopular != null:
return loadPopular(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadPopular value)  loadPopular,required TResult Function( _ToggleFavoriteStatus value)  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _LoadPopular():
return loadPopular(_that);case _ToggleFavoriteStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadPopular value)?  loadPopular,TResult? Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _LoadPopular() when loadPopular != null:
return loadPopular(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool loadMore)?  loadPopular,TResult Function( WorkEntity work)?  toggleFavoriteStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadPopular() when loadPopular != null:
return loadPopular(_that.loadMore);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool loadMore)  loadPopular,required TResult Function( WorkEntity work)  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _LoadPopular():
return loadPopular(_that.loadMore);case _ToggleFavoriteStatus():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool loadMore)?  loadPopular,TResult? Function( WorkEntity work)?  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _LoadPopular() when loadPopular != null:
return loadPopular(_that.loadMore);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that.work);case _:
  return null;

}
}

}

/// @nodoc


class _LoadPopular implements PopularEvent {
  const _LoadPopular(this.loadMore);
  

 final  bool loadMore;

/// Create a copy of PopularEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadPopularCopyWith<_LoadPopular> get copyWith => __$LoadPopularCopyWithImpl<_LoadPopular>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadPopular&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}


@override
int get hashCode => Object.hash(runtimeType,loadMore);

@override
String toString() {
  return 'PopularEvent.loadPopular(loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class _$LoadPopularCopyWith<$Res> implements $PopularEventCopyWith<$Res> {
  factory _$LoadPopularCopyWith(_LoadPopular value, $Res Function(_LoadPopular) _then) = __$LoadPopularCopyWithImpl;
@useResult
$Res call({
 bool loadMore
});




}
/// @nodoc
class __$LoadPopularCopyWithImpl<$Res>
    implements _$LoadPopularCopyWith<$Res> {
  __$LoadPopularCopyWithImpl(this._self, this._then);

  final _LoadPopular _self;
  final $Res Function(_LoadPopular) _then;

/// Create a copy of PopularEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loadMore = null,}) {
  return _then(_LoadPopular(
null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ToggleFavoriteStatus implements PopularEvent {
  const _ToggleFavoriteStatus(this.work);
  

 final  WorkEntity work;

/// Create a copy of PopularEvent
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
  return 'PopularEvent.toggleFavoriteStatus(work: $work)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteStatusCopyWith<$Res> implements $PopularEventCopyWith<$Res> {
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

/// Create a copy of PopularEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? work = null,}) {
  return _then(_ToggleFavoriteStatus(
null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,
  ));
}


}

/// @nodoc
mixin _$PopularState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularState()';
}


}

/// @nodoc
class $PopularStateCopyWith<$Res>  {
$PopularStateCopyWith(PopularState _, $Res Function(PopularState) __);
}


/// Adds pattern-matching-related methods to [PopularState].
extension PopularStatePatterns on PopularState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PopularInitial value)?  initial,TResult Function( PopularLoading value)?  loading,TResult Function( PopularLoaded value)?  loaded,TResult Function( PopularError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PopularInitial() when initial != null:
return initial(_that);case PopularLoading() when loading != null:
return loading(_that);case PopularLoaded() when loaded != null:
return loaded(_that);case PopularError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PopularInitial value)  initial,required TResult Function( PopularLoading value)  loading,required TResult Function( PopularLoaded value)  loaded,required TResult Function( PopularError value)  error,}){
final _that = this;
switch (_that) {
case PopularInitial():
return initial(_that);case PopularLoading():
return loading(_that);case PopularLoaded():
return loaded(_that);case PopularError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PopularInitial value)?  initial,TResult? Function( PopularLoading value)?  loading,TResult? Function( PopularLoaded value)?  loaded,TResult? Function( PopularError value)?  error,}){
final _that = this;
switch (_that) {
case PopularInitial() when initial != null:
return initial(_that);case PopularLoading() when loading != null:
return loading(_that);case PopularLoaded() when loaded != null:
return loaded(_that);case PopularError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WorkEntity> works,  int page,  bool hasMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PopularInitial() when initial != null:
return initial();case PopularLoading() when loading != null:
return loading();case PopularLoaded() when loaded != null:
return loaded(_that.works,_that.page,_that.hasMore);case PopularError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WorkEntity> works,  int page,  bool hasMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case PopularInitial():
return initial();case PopularLoading():
return loading();case PopularLoaded():
return loaded(_that.works,_that.page,_that.hasMore);case PopularError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WorkEntity> works,  int page,  bool hasMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case PopularInitial() when initial != null:
return initial();case PopularLoading() when loading != null:
return loading();case PopularLoaded() when loaded != null:
return loaded(_that.works,_that.page,_that.hasMore);case PopularError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PopularInitial implements PopularState {
  const PopularInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularState.initial()';
}


}




/// @nodoc


class PopularLoading implements PopularState {
  const PopularLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PopularState.loading()';
}


}




/// @nodoc


class PopularLoaded implements PopularState {
  const PopularLoaded({required final  List<WorkEntity> works, this.page = 1, this.hasMore = false}): _works = works;
  

 final  List<WorkEntity> _works;
 List<WorkEntity> get works {
  if (_works is EqualUnmodifiableListView) return _works;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_works);
}

@JsonKey() final  int page;
@JsonKey() final  bool hasMore;

/// Create a copy of PopularState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularLoadedCopyWith<PopularLoaded> get copyWith => _$PopularLoadedCopyWithImpl<PopularLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularLoaded&&const DeepCollectionEquality().equals(other._works, _works)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_works),page,hasMore);

@override
String toString() {
  return 'PopularState.loaded(works: $works, page: $page, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $PopularLoadedCopyWith<$Res> implements $PopularStateCopyWith<$Res> {
  factory $PopularLoadedCopyWith(PopularLoaded value, $Res Function(PopularLoaded) _then) = _$PopularLoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkEntity> works, int page, bool hasMore
});




}
/// @nodoc
class _$PopularLoadedCopyWithImpl<$Res>
    implements $PopularLoadedCopyWith<$Res> {
  _$PopularLoadedCopyWithImpl(this._self, this._then);

  final PopularLoaded _self;
  final $Res Function(PopularLoaded) _then;

/// Create a copy of PopularState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? works = null,Object? page = null,Object? hasMore = null,}) {
  return _then(PopularLoaded(
works: null == works ? _self._works : works // ignore: cast_nullable_to_non_nullable
as List<WorkEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PopularError implements PopularState {
  const PopularError(this.message);
  

 final  String message;

/// Create a copy of PopularState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularErrorCopyWith<PopularError> get copyWith => _$PopularErrorCopyWithImpl<PopularError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PopularState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PopularErrorCopyWith<$Res> implements $PopularStateCopyWith<$Res> {
  factory $PopularErrorCopyWith(PopularError value, $Res Function(PopularError) _then) = _$PopularErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PopularErrorCopyWithImpl<$Res>
    implements $PopularErrorCopyWith<$Res> {
  _$PopularErrorCopyWithImpl(this._self, this._then);

  final PopularError _self;
  final $Res Function(PopularError) _then;

/// Create a copy of PopularState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PopularError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
