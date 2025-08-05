// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cu_profile_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CUProfileState {

 bool get isLoading; CUProfileModel get cuProfileModel;
/// Create a copy of CUProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CUProfileStateCopyWith<CUProfileState> get copyWith => _$CUProfileStateCopyWithImpl<CUProfileState>(this as CUProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CUProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.cuProfileModel, cuProfileModel) || other.cuProfileModel == cuProfileModel));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,cuProfileModel);

@override
String toString() {
  return 'CUProfileState(isLoading: $isLoading, cuProfileModel: $cuProfileModel)';
}


}

/// @nodoc
abstract mixin class $CUProfileStateCopyWith<$Res>  {
  factory $CUProfileStateCopyWith(CUProfileState value, $Res Function(CUProfileState) _then) = _$CUProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CUProfileModel cuProfileModel
});




}
/// @nodoc
class _$CUProfileStateCopyWithImpl<$Res>
    implements $CUProfileStateCopyWith<$Res> {
  _$CUProfileStateCopyWithImpl(this._self, this._then);

  final CUProfileState _self;
  final $Res Function(CUProfileState) _then;

/// Create a copy of CUProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? cuProfileModel = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,cuProfileModel: null == cuProfileModel ? _self.cuProfileModel : cuProfileModel // ignore: cast_nullable_to_non_nullable
as CUProfileModel,
  ));
}

}


/// Adds pattern-matching-related methods to [CUProfileState].
extension CUProfileStatePatterns on CUProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CUProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CUProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CUProfileState value)  $default,){
final _that = this;
switch (_that) {
case _CUProfileState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CUProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _CUProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CUProfileModel cuProfileModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CUProfileState() when $default != null:
return $default(_that.isLoading,_that.cuProfileModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CUProfileModel cuProfileModel)  $default,) {final _that = this;
switch (_that) {
case _CUProfileState():
return $default(_that.isLoading,_that.cuProfileModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CUProfileModel cuProfileModel)?  $default,) {final _that = this;
switch (_that) {
case _CUProfileState() when $default != null:
return $default(_that.isLoading,_that.cuProfileModel);case _:
  return null;

}
}

}

/// @nodoc


class _CUProfileState extends CUProfileState {
  const _CUProfileState({this.isLoading = true, required this.cuProfileModel}): super._();
  

@override@JsonKey() final  bool isLoading;
@override final  CUProfileModel cuProfileModel;

/// Create a copy of CUProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CUProfileStateCopyWith<_CUProfileState> get copyWith => __$CUProfileStateCopyWithImpl<_CUProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CUProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.cuProfileModel, cuProfileModel) || other.cuProfileModel == cuProfileModel));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,cuProfileModel);

@override
String toString() {
  return 'CUProfileState(isLoading: $isLoading, cuProfileModel: $cuProfileModel)';
}


}

/// @nodoc
abstract mixin class _$CUProfileStateCopyWith<$Res> implements $CUProfileStateCopyWith<$Res> {
  factory _$CUProfileStateCopyWith(_CUProfileState value, $Res Function(_CUProfileState) _then) = __$CUProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CUProfileModel cuProfileModel
});




}
/// @nodoc
class __$CUProfileStateCopyWithImpl<$Res>
    implements _$CUProfileStateCopyWith<$Res> {
  __$CUProfileStateCopyWithImpl(this._self, this._then);

  final _CUProfileState _self;
  final $Res Function(_CUProfileState) _then;

/// Create a copy of CUProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? cuProfileModel = null,}) {
  return _then(_CUProfileState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,cuProfileModel: null == cuProfileModel ? _self.cuProfileModel : cuProfileModel // ignore: cast_nullable_to_non_nullable
as CUProfileModel,
  ));
}


}

// dart format on
