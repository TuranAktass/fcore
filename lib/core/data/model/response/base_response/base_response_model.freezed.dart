// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponseModel<T> {
  int? get timestamp => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseModelCopyWith<T, BaseResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseModelCopyWith<T, $Res> {
  factory $BaseResponseModelCopyWith(BaseResponseModel<T> value,
          $Res Function(BaseResponseModel<T>) then) =
      _$BaseResponseModelCopyWithImpl<T, $Res, BaseResponseModel<T>>;
  @useResult
  $Res call(
      {int? timestamp, bool? success, String? message, String? code, T? data});
}

/// @nodoc
class _$BaseResponseModelCopyWithImpl<T, $Res,
        $Val extends BaseResponseModel<T>>
    implements $BaseResponseModelCopyWith<T, $Res> {
  _$BaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseModelImplCopyWith<T, $Res>
    implements $BaseResponseModelCopyWith<T, $Res> {
  factory _$$BaseResponseModelImplCopyWith(_$BaseResponseModelImpl<T> value,
          $Res Function(_$BaseResponseModelImpl<T>) then) =
      __$$BaseResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int? timestamp, bool? success, String? message, String? code, T? data});
}

/// @nodoc
class __$$BaseResponseModelImplCopyWithImpl<T, $Res>
    extends _$BaseResponseModelCopyWithImpl<T, $Res, _$BaseResponseModelImpl<T>>
    implements _$$BaseResponseModelImplCopyWith<T, $Res> {
  __$$BaseResponseModelImplCopyWithImpl(_$BaseResponseModelImpl<T> _value,
      $Res Function(_$BaseResponseModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseModelImpl<T>(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseModelImpl<T> implements _BaseResponseModel<T> {
  const _$BaseResponseModelImpl(
      {this.timestamp, this.success, this.message, this.code, this.data});

  factory _$BaseResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseModelImplFromJson(json, fromJsonT);

  @override
  final int? timestamp;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final T? data;

  @override
  String toString() {
    return 'BaseResponseModel<$T>(timestamp: $timestamp, success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseModelImpl<T> &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, success, message,
      code, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith =>
          __$$BaseResponseModelImplCopyWithImpl<T, _$BaseResponseModelImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponseModel<T> implements BaseResponseModel<T> {
  const factory _BaseResponseModel(
      {final int? timestamp,
      final bool? success,
      final String? message,
      final String? code,
      final T? data}) = _$BaseResponseModelImpl<T>;

  factory _BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseModelImpl<T>.fromJson;

  @override
  int? get timestamp;
  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponseModelImplCopyWith<T, _$BaseResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
