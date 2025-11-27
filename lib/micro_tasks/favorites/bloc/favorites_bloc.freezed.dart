// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent()';
}


}

/// @nodoc
class $FavoritesEventCopyWith<$Res>  {
$FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}


/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadFavorites value)?  loadFavorites,TResult Function( _RemoveFavorite value)?  removeFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadFavorites value)  loadFavorites,required TResult Function( _RemoveFavorite value)  removeFavorite,}){
final _that = this;
switch (_that) {
case _LoadFavorites():
return loadFavorites(_that);case _RemoveFavorite():
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadFavorites value)?  loadFavorites,TResult? Function( _RemoveFavorite value)?  removeFavorite,}){
final _that = this;
switch (_that) {
case _LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? page)?  loadFavorites,TResult Function( String workKey)?  removeFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadFavorites() when loadFavorites != null:
return loadFavorites(_that.page);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.workKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? page)  loadFavorites,required TResult Function( String workKey)  removeFavorite,}) {final _that = this;
switch (_that) {
case _LoadFavorites():
return loadFavorites(_that.page);case _RemoveFavorite():
return removeFavorite(_that.workKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? page)?  loadFavorites,TResult? Function( String workKey)?  removeFavorite,}) {final _that = this;
switch (_that) {
case _LoadFavorites() when loadFavorites != null:
return loadFavorites(_that.page);case _RemoveFavorite() when removeFavorite != null:
return removeFavorite(_that.workKey);case _:
  return null;

}
}

}

/// @nodoc


class _LoadFavorites implements FavoritesEvent {
  const _LoadFavorites({this.page});
  

 final  int? page;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadFavoritesCopyWith<_LoadFavorites> get copyWith => __$LoadFavoritesCopyWithImpl<_LoadFavorites>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFavorites&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'FavoritesEvent.loadFavorites(page: $page)';
}


}

/// @nodoc
abstract mixin class _$LoadFavoritesCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$LoadFavoritesCopyWith(_LoadFavorites value, $Res Function(_LoadFavorites) _then) = __$LoadFavoritesCopyWithImpl;
@useResult
$Res call({
 int? page
});




}
/// @nodoc
class __$LoadFavoritesCopyWithImpl<$Res>
    implements _$LoadFavoritesCopyWith<$Res> {
  __$LoadFavoritesCopyWithImpl(this._self, this._then);

  final _LoadFavorites _self;
  final $Res Function(_LoadFavorites) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = freezed,}) {
  return _then(_LoadFavorites(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _RemoveFavorite implements FavoritesEvent {
  const _RemoveFavorite(this.workKey);
  

 final  String workKey;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFavoriteCopyWith<_RemoveFavorite> get copyWith => __$RemoveFavoriteCopyWithImpl<_RemoveFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFavorite&&(identical(other.workKey, workKey) || other.workKey == workKey));
}


@override
int get hashCode => Object.hash(runtimeType,workKey);

@override
String toString() {
  return 'FavoritesEvent.removeFavorite(workKey: $workKey)';
}


}

/// @nodoc
abstract mixin class _$RemoveFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$RemoveFavoriteCopyWith(_RemoveFavorite value, $Res Function(_RemoveFavorite) _then) = __$RemoveFavoriteCopyWithImpl;
@useResult
$Res call({
 String workKey
});




}
/// @nodoc
class __$RemoveFavoriteCopyWithImpl<$Res>
    implements _$RemoveFavoriteCopyWith<$Res> {
  __$RemoveFavoriteCopyWithImpl(this._self, this._then);

  final _RemoveFavorite _self;
  final $Res Function(_RemoveFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workKey = null,}) {
  return _then(_RemoveFavorite(
null == workKey ? _self.workKey : workKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FavoritesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState()';
}


}

/// @nodoc
class $FavoritesStateCopyWith<$Res>  {
$FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FavoritesInitial value)?  initial,TResult Function( FavoritesLoading value)?  loading,TResult Function( FavoritesLoaded value)?  loaded,TResult Function( FavoritesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavoritesInitial() when initial != null:
return initial(_that);case FavoritesLoading() when loading != null:
return loading(_that);case FavoritesLoaded() when loaded != null:
return loaded(_that);case FavoritesError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FavoritesInitial value)  initial,required TResult Function( FavoritesLoading value)  loading,required TResult Function( FavoritesLoaded value)  loaded,required TResult Function( FavoritesError value)  error,}){
final _that = this;
switch (_that) {
case FavoritesInitial():
return initial(_that);case FavoritesLoading():
return loading(_that);case FavoritesLoaded():
return loaded(_that);case FavoritesError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FavoritesInitial value)?  initial,TResult? Function( FavoritesLoading value)?  loading,TResult? Function( FavoritesLoaded value)?  loaded,TResult? Function( FavoritesError value)?  error,}){
final _that = this;
switch (_that) {
case FavoritesInitial() when initial != null:
return initial(_that);case FavoritesLoading() when loading != null:
return loading(_that);case FavoritesLoaded() when loaded != null:
return loaded(_that);case FavoritesError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WorkEntity> works,  int currentPage,  int totalPages)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavoritesInitial() when initial != null:
return initial();case FavoritesLoading() when loading != null:
return loading();case FavoritesLoaded() when loaded != null:
return loaded(_that.works,_that.currentPage,_that.totalPages);case FavoritesError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WorkEntity> works,  int currentPage,  int totalPages)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case FavoritesInitial():
return initial();case FavoritesLoading():
return loading();case FavoritesLoaded():
return loaded(_that.works,_that.currentPage,_that.totalPages);case FavoritesError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WorkEntity> works,  int currentPage,  int totalPages)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case FavoritesInitial() when initial != null:
return initial();case FavoritesLoading() when loading != null:
return loading();case FavoritesLoaded() when loaded != null:
return loaded(_that.works,_that.currentPage,_that.totalPages);case FavoritesError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class FavoritesInitial implements FavoritesState {
  const FavoritesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.initial()';
}


}




/// @nodoc


class FavoritesLoading implements FavoritesState {
  const FavoritesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.loading()';
}


}




/// @nodoc


class FavoritesLoaded implements FavoritesState {
  const FavoritesLoaded({required final  List<WorkEntity> works, required this.currentPage, required this.totalPages}): _works = works;
  

 final  List<WorkEntity> _works;
 List<WorkEntity> get works {
  if (_works is EqualUnmodifiableListView) return _works;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_works);
}

 final  int currentPage;
 final  int totalPages;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesLoadedCopyWith<FavoritesLoaded> get copyWith => _$FavoritesLoadedCopyWithImpl<FavoritesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesLoaded&&const DeepCollectionEquality().equals(other._works, _works)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_works),currentPage,totalPages);

@override
String toString() {
  return 'FavoritesState.loaded(works: $works, currentPage: $currentPage, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $FavoritesLoadedCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesLoadedCopyWith(FavoritesLoaded value, $Res Function(FavoritesLoaded) _then) = _$FavoritesLoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkEntity> works, int currentPage, int totalPages
});




}
/// @nodoc
class _$FavoritesLoadedCopyWithImpl<$Res>
    implements $FavoritesLoadedCopyWith<$Res> {
  _$FavoritesLoadedCopyWithImpl(this._self, this._then);

  final FavoritesLoaded _self;
  final $Res Function(FavoritesLoaded) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? works = null,Object? currentPage = null,Object? totalPages = null,}) {
  return _then(FavoritesLoaded(
works: null == works ? _self._works : works // ignore: cast_nullable_to_non_nullable
as List<WorkEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class FavoritesError implements FavoritesState {
  const FavoritesError(this.message);
  

 final  String message;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesErrorCopyWith<FavoritesError> get copyWith => _$FavoritesErrorCopyWithImpl<FavoritesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavoritesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FavoritesErrorCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesErrorCopyWith(FavoritesError value, $Res Function(FavoritesError) _then) = _$FavoritesErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FavoritesErrorCopyWithImpl<$Res>
    implements $FavoritesErrorCopyWith<$Res> {
  _$FavoritesErrorCopyWithImpl(this._self, this._then);

  final FavoritesError _self;
  final $Res Function(FavoritesError) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FavoritesError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
