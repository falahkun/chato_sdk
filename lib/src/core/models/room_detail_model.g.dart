// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomDetailModel _$RoomDetailModelFromJson(Map<String, dynamic> json) =>
    RoomDetailModel(
      roomId: json['room_id'] as int?,
      roomType: json['room_type'] as String?,
      roomName: json['room_name'] as String?,
      roomDesc: json['room_desc'] as String?,
      roomIcon: json['room_icon'] as String?,
      groupName: json['group_name'] as String?,
      groupDesc: json['group_desc'] as String?,
      createdBy: json['created_by'] as String?,
      createdDate: json['created_date'] as String?,
      userCount: json['user_count'] as int?,
      lastMessage: json['last_message'] as String?,
      isAdmin: json['is_admin'] as int?,
      roomGroupType: json['room_group_type'] as String?,
      lastSeend: json['last_send'] as String?,
    );

Map<String, dynamic> _$RoomDetailModelToJson(RoomDetailModel instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_type': instance.roomType,
      'room_name': instance.roomName,
      'room_desc': instance.roomDesc,
      'room_icon': instance.roomIcon,
      'group_name': instance.groupName,
      'group_desc': instance.groupDesc,
      'created_by': instance.createdBy,
      'created_date': instance.createdDate,
      'user_count': instance.userCount,
      'last_message': instance.lastMessage,
      'is_admin': instance.isAdmin,
      'room_group_type': instance.roomGroupType,
      'last_send': instance.lastSeend,
    };
