// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StartSearch value)?  startSearch,TResult Function( _LoadMoreSearch value)?  loadMoreSearch,TResult Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartSearch() when startSearch != null:
return startSearch(_that);case _LoadMoreSearch() when loadMoreSearch != null:
return loadMoreSearch(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StartSearch value)  startSearch,required TResult Function( _LoadMoreSearch value)  loadMoreSearch,required TResult Function( _ToggleFavoriteStatus value)  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _StartSearch():
return startSearch(_that);case _LoadMoreSearch():
return loadMoreSearch(_that);case _ToggleFavoriteStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StartSearch value)?  startSearch,TResult? Function( _LoadMoreSearch value)?  loadMoreSearch,TResult? Function( _ToggleFavoriteStatus value)?  toggleFavoriteStatus,}){
final _that = this;
switch (_that) {
case _StartSearch() when startSearch != null:
return startSearch(_that);case _LoadMoreSearch() when loadMoreSearch != null:
return loadMoreSearch(_that);case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  startSearch,TResult Function()?  loadMoreSearch,TResult Function( WorkEntity work)?  toggleFavoriteStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartSearch() when startSearch != null:
return startSearch(_that.query);case _LoadMoreSearch() when loadMoreSearch != null:
return loadMoreSearch();case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  startSearch,required TResult Function()  loadMoreSearch,required TResult Function( WorkEntity work)  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _StartSearch():
return startSearch(_that.query);case _LoadMoreSearch():
return loadMoreSearch();case _ToggleFavoriteStatus():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  startSearch,TResult? Function()?  loadMoreSearch,TResult? Function( WorkEntity work)?  toggleFavoriteStatus,}) {final _that = this;
switch (_that) {
case _StartSearch() when startSearch != null:
return startSearch(_that.query);case _LoadMoreSearch() when loadMoreSearch != null:
return loadMoreSearch();case _ToggleFavoriteStatus() when toggleFavoriteStatus != null:
return toggleFavoriteStatus(_that.work);case _:
  return null;

}
}

}

/// @nodoc


class _StartSearch implements SearchEvent {
  const _StartSearch(this.query);
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartSearchCopyWith<_StartSearch> get copyWith => __$StartSearchCopyWithImpl<_StartSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartSearch&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.startSearch(query: $query)';
}


}

/// @nodoc
abstract mixin class _$StartSearchCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$StartSearchCopyWith(_StartSearch value, $Res Function(_StartSearch) _then) = __$StartSearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$StartSearchCopyWithImpl<$Res>
    implements _$StartSearchCopyWith<$Res> {
  __$StartSearchCopyWithImpl(this._self, this._then);

  final _StartSearch _self;
  final $Res Function(_StartSearch) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_StartSearch(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadMoreSearch implements SearchEvent {
  const _LoadMoreSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.loadMoreSearch()';
}


}




/// @nodoc


class _ToggleFavoriteStatus implements SearchEvent {
  const _ToggleFavoriteStatus(this.work);
  

 final  WorkEntity work;

/// Create a copy of SearchEvent
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
  return 'SearchEvent.toggleFavoriteStatus(work: $work)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteStatusCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
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

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? work = null,}) {
  return _then(_ToggleFavoriteStatus(
null == work ? _self.work : work // ignore: cast_nullable_to_non_nullable
as WorkEntity,
  ));
}


}

/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchInitial value)?  initial,TResult Function( SearchLoading value)?  loading,TResult Function( SearchLoaded value)?  loaded,TResult Function( SearchEmpty value)?  empty,TResult Function( SearchError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchInitial() when initial != null:
return initial(_that);case SearchLoading() when loading != null:
return loading(_that);case SearchLoaded() when loaded != null:
return loaded(_that);case SearchEmpty() when empty != null:
return empty(_that);case SearchError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchInitial value)  initial,required TResult Function( SearchLoading value)  loading,required TResult Function( SearchLoaded value)  loaded,required TResult Function( SearchEmpty value)  empty,required TResult Function( SearchError value)  error,}){
final _that = this;
switch (_that) {
case SearchInitial():
return initial(_that);case SearchLoading():
return loading(_that);case SearchLoaded():
return loaded(_that);case SearchEmpty():
return empty(_that);case SearchError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchInitial value)?  initial,TResult? Function( SearchLoading value)?  loading,TResult? Function( SearchLoaded value)?  loaded,TResult? Function( SearchEmpty value)?  empty,TResult? Function( SearchError value)?  error,}){
final _that = this;
switch (_that) {
case SearchInitial() when initial != null:
return initial(_that);case SearchLoading() when loading != null:
return loading(_that);case SearchLoaded() when loaded != null:
return loaded(_that);case SearchEmpty() when empty != null:
return empty(_that);case SearchError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String query)?  loading,TResult Function( String query,  List<WorkEntity> results,  int page,  bool hasMore)?  loaded,TResult Function( String query)?  empty,TResult Function( String query,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchInitial() when initial != null:
return initial();case SearchLoading() when loading != null:
return loading(_that.query);case SearchLoaded() when loaded != null:
return loaded(_that.query,_that.results,_that.page,_that.hasMore);case SearchEmpty() when empty != null:
return empty(_that.query);case SearchError() when error != null:
return error(_that.query,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String query)  loading,required TResult Function( String query,  List<WorkEntity> results,  int page,  bool hasMore)  loaded,required TResult Function( String query)  empty,required TResult Function( String query,  String message)  error,}) {final _that = this;
switch (_that) {
case SearchInitial():
return initial();case SearchLoading():
return loading(_that.query);case SearchLoaded():
return loaded(_that.query,_that.results,_that.page,_that.hasMore);case SearchEmpty():
return empty(_that.query);case SearchError():
return error(_that.query,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String query)?  loading,TResult? Function( String query,  List<WorkEntity> results,  int page,  bool hasMore)?  loaded,TResult? Function( String query)?  empty,TResult? Function( String query,  String message)?  error,}) {final _that = this;
switch (_that) {
case SearchInitial() when initial != null:
return initial();case SearchLoading() when loading != null:
return loading(_that.query);case SearchLoaded() when loaded != null:
return loaded(_that.query,_that.results,_that.page,_that.hasMore);case SearchEmpty() when empty != null:
return empty(_that.query);case SearchError() when error != null:
return error(_that.query,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SearchInitial implements SearchState {
  const SearchInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initial()';
}


}




/// @nodoc


class SearchLoading implements SearchState {
  const SearchLoading({required this.query});
  

 final  String query;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadingCopyWith<SearchLoading> get copyWith => _$SearchLoadingCopyWithImpl<SearchLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoading&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchState.loading(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchLoadingCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchLoadingCopyWith(SearchLoading value, $Res Function(SearchLoading) _then) = _$SearchLoadingCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchLoadingCopyWithImpl<$Res>
    implements $SearchLoadingCopyWith<$Res> {
  _$SearchLoadingCopyWithImpl(this._self, this._then);

  final SearchLoading _self;
  final $Res Function(SearchLoading) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchLoading(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchLoaded implements SearchState {
  const SearchLoaded({required this.query, required final  List<WorkEntity> results, required this.page, required this.hasMore}): _results = results;
  

 final  String query;
 final  List<WorkEntity> _results;
 List<WorkEntity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  int page;
 final  bool hasMore;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchLoadedCopyWith<SearchLoaded> get copyWith => _$SearchLoadedCopyWithImpl<SearchLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoaded&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),page,hasMore);

@override
String toString() {
  return 'SearchState.loaded(query: $query, results: $results, page: $page, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $SearchLoadedCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchLoadedCopyWith(SearchLoaded value, $Res Function(SearchLoaded) _then) = _$SearchLoadedCopyWithImpl;
@useResult
$Res call({
 String query, List<WorkEntity> results, int page, bool hasMore
});




}
/// @nodoc
class _$SearchLoadedCopyWithImpl<$Res>
    implements $SearchLoadedCopyWith<$Res> {
  _$SearchLoadedCopyWithImpl(this._self, this._then);

  final SearchLoaded _self;
  final $Res Function(SearchLoaded) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? page = null,Object? hasMore = null,}) {
  return _then(SearchLoaded(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<WorkEntity>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SearchEmpty implements SearchState {
  const SearchEmpty({required this.query});
  

 final  String query;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchEmptyCopyWith<SearchEmpty> get copyWith => _$SearchEmptyCopyWithImpl<SearchEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEmpty&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchState.empty(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchEmptyCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchEmptyCopyWith(SearchEmpty value, $Res Function(SearchEmpty) _then) = _$SearchEmptyCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchEmptyCopyWithImpl<$Res>
    implements $SearchEmptyCopyWith<$Res> {
  _$SearchEmptyCopyWithImpl(this._self, this._then);

  final SearchEmpty _self;
  final $Res Function(SearchEmpty) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchEmpty(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchError implements SearchState {
  const SearchError({required this.query, required this.message});
  

 final  String query;
 final  String message;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchErrorCopyWith<SearchError> get copyWith => _$SearchErrorCopyWithImpl<SearchError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchError&&(identical(other.query, query) || other.query == query)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,query,message);

@override
String toString() {
  return 'SearchState.error(query: $query, message: $message)';
}


}

/// @nodoc
abstract mixin class $SearchErrorCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchErrorCopyWith(SearchError value, $Res Function(SearchError) _then) = _$SearchErrorCopyWithImpl;
@useResult
$Res call({
 String query, String message
});




}
/// @nodoc
class _$SearchErrorCopyWithImpl<$Res>
    implements $SearchErrorCopyWith<$Res> {
  _$SearchErrorCopyWithImpl(this._self, this._then);

  final SearchError _self;
  final $Res Function(SearchError) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? message = null,}) {
  return _then(SearchError(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
