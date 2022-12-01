// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailUserModel _$DetailUserModelFromJson(Map<String, dynamic> json) =>
    DetailUserModel(
      userId: json['user_id'] as int,
      usserName: json['usser_name'] as String,
      isOnline: json['is_online'] as bool? ?? false,
      lastSeen: json['last_seen'] as String,
    );

Map<String, dynamic> _$DetailUserModelToJson(DetailUserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'usser_name': instance.usserName,
      'is_online': instance.isOnline,
      'last_seen': instance.lastSeen,
    };
