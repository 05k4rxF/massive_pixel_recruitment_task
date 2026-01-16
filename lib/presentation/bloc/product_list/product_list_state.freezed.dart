// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState()';
}


}

/// @nodoc
class $ProductListStateCopyWith<$Res>  {
$ProductListStateCopyWith(ProductListState _, $Res Function(ProductListState) __);
}


/// Adds pattern-matching-related methods to [ProductListState].
extension ProductListStatePatterns on ProductListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductListInitial value)?  initial,TResult Function( ProductListLoading value)?  loading,TResult Function( ProductListLoaded value)?  loaded,TResult Function( ProductListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial(_that);case ProductListLoading() when loading != null:
return loading(_that);case ProductListLoaded() when loaded != null:
return loaded(_that);case ProductListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductListInitial value)  initial,required TResult Function( ProductListLoading value)  loading,required TResult Function( ProductListLoaded value)  loaded,required TResult Function( ProductListError value)  error,}){
final _that = this;
switch (_that) {
case ProductListInitial():
return initial(_that);case ProductListLoading():
return loading(_that);case ProductListLoaded():
return loaded(_that);case ProductListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductListInitial value)?  initial,TResult? Function( ProductListLoading value)?  loading,TResult? Function( ProductListLoaded value)?  loaded,TResult? Function( ProductListError value)?  error,}){
final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial(_that);case ProductListLoading() when loading != null:
return loading(_that);case ProductListLoaded() when loaded != null:
return loaded(_that);case ProductListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Product> products,  List<Product> filteredProducts,  String? searchQuery)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial();case ProductListLoading() when loading != null:
return loading();case ProductListLoaded() when loaded != null:
return loaded(_that.products,_that.filteredProducts,_that.searchQuery);case ProductListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Product> products,  List<Product> filteredProducts,  String? searchQuery)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ProductListInitial():
return initial();case ProductListLoading():
return loading();case ProductListLoaded():
return loaded(_that.products,_that.filteredProducts,_that.searchQuery);case ProductListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Product> products,  List<Product> filteredProducts,  String? searchQuery)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ProductListInitial() when initial != null:
return initial();case ProductListLoading() when loading != null:
return loading();case ProductListLoaded() when loaded != null:
return loaded(_that.products,_that.filteredProducts,_that.searchQuery);case ProductListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProductListInitial implements ProductListState {
  const ProductListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.initial()';
}


}




/// @nodoc


class ProductListLoading implements ProductListState {
  const ProductListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductListState.loading()';
}


}




/// @nodoc


class ProductListLoaded implements ProductListState {
  const ProductListLoaded({required final  List<Product> products, required final  List<Product> filteredProducts, this.searchQuery}): _products = products,_filteredProducts = filteredProducts;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<Product> _filteredProducts;
 List<Product> get filteredProducts {
  if (_filteredProducts is EqualUnmodifiableListView) return _filteredProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredProducts);
}

 final  String? searchQuery;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListLoadedCopyWith<ProductListLoaded> get copyWith => _$ProductListLoadedCopyWithImpl<ProductListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListLoaded&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._filteredProducts, _filteredProducts)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_filteredProducts),searchQuery);

@override
String toString() {
  return 'ProductListState.loaded(products: $products, filteredProducts: $filteredProducts, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $ProductListLoadedCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory $ProductListLoadedCopyWith(ProductListLoaded value, $Res Function(ProductListLoaded) _then) = _$ProductListLoadedCopyWithImpl;
@useResult
$Res call({
 List<Product> products, List<Product> filteredProducts, String? searchQuery
});




}
/// @nodoc
class _$ProductListLoadedCopyWithImpl<$Res>
    implements $ProductListLoadedCopyWith<$Res> {
  _$ProductListLoadedCopyWithImpl(this._self, this._then);

  final ProductListLoaded _self;
  final $Res Function(ProductListLoaded) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? filteredProducts = null,Object? searchQuery = freezed,}) {
  return _then(ProductListLoaded(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,filteredProducts: null == filteredProducts ? _self._filteredProducts : filteredProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ProductListError implements ProductListState {
  const ProductListError(this.message);
  

 final  String message;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListErrorCopyWith<ProductListError> get copyWith => _$ProductListErrorCopyWithImpl<ProductListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductListErrorCopyWith<$Res> implements $ProductListStateCopyWith<$Res> {
  factory $ProductListErrorCopyWith(ProductListError value, $Res Function(ProductListError) _then) = _$ProductListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductListErrorCopyWithImpl<$Res>
    implements $ProductListErrorCopyWith<$Res> {
  _$ProductListErrorCopyWithImpl(this._self, this._then);

  final ProductListError _self;
  final $Res Function(ProductListError) _then;

/// Create a copy of ProductListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProductListError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
