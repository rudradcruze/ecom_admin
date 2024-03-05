// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserModelImpl _$$AppUserModelImplFromJson(Map<String, dynamic> json) =>
    _$AppUserModelImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      imageUrl: json['imageUrl'] as String?,
      streetAddress: json['streetAddress'] as String?,
      displayName: json['displayName'] as String?,
      userCreationTime: _$JsonConverterFromJson<Timestamp, Timestamp>(
          json['userCreationTime'], const TimeStampConverter().fromJson),
    );

Map<String, dynamic> _$$AppUserModelImplToJson(_$AppUserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
      'streetAddress': instance.streetAddress,
      'displayName': instance.displayName,
      'userCreationTime': _$JsonConverterToJson<Timestamp, Timestamp>(
          instance.userCreationTime, const TimeStampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
