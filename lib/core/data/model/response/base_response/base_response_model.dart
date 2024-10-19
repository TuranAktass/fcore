import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponseModel<T> with _$BaseResponseModel<T> {
  const factory BaseResponseModel({
    int? timestamp,
    bool? success,
    String? message,
    String? code,
    T? data,
  }) = _BaseResponseModel;


  factory BaseResponseModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$BaseResponseModelFromJson(json, fromJsonT);
}