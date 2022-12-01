// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRoomModel _$UserRoomModelFromJson(Map<String, dynamic> json) =>
    UserRoomModel(
      roomId: json['room_id'] as int? ?? 0,
      isMention: json['is_mention'] as int? ?? 0,
      roomType: json['room_type'] as String? ?? '',
      roomCode: json['room_code'] as String? ?? '',
      roomName: json['room_name'] as String? ?? '',
      roomNickName: json['room_nick_name'] as String? ?? '',
      roomDesc: json['room_desc'] as String? ?? '',
      roomPhoto: json['room_photo'] as String? ?? '',
      groupName: json['group_name'] as String? ?? '',
      groupDesc: json['group_desc'] as String? ?? '',
      userId: json['user_id'] as int? ?? 0,
      userUsername: json['user_username'] as String? ?? '',
      nickName: json['nick_name'] as String? ?? '',
      userPhoto: json['user_photo'] as String? ?? '',
      userNip: json['user_nip'] as int? ?? 0,
      isOnline: json['is_online'] as int? ?? 0,
      messageId: json['message_id'] as int? ?? 0,
      lastMessage: json['last_message'] as String? ?? '',
      isOwn: json['is_own'] as int? ?? 0,
      lastDate: json['last_date'] as String? ?? '',
      lastTime: json['last_time'] as String? ?? '',
      isPined: json['is_pined'] as int? ?? 0,
      unreadMessage: json['is_unread_message'] as int? ?? 0,
      userCount: json['user_count'] as int? ?? 0,
      messageIsDeleted: json['message_deleted'] as int? ?? 0,
      labelId: json['label_id'] as List<dynamic>? ?? [],
      labelTitle: json['label_title'] as List<dynamic>? ?? [],
      labelColor: json['label_color'] as List<dynamic>? ?? [],
      detailLastMessage: LastMessageModel.fromJson(
          json['detail_last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRoomModelToJson(UserRoomModel instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'is_mention': instance.isMention,
      'room_type': instance.roomType,
      'room_code': instance.roomCode,
      'room_name': instance.roomName,
      'room_nick_name': instance.roomNickName,
      'room_desc': instance.roomDesc,
      'room_photo': instance.roomPhoto,
      'group_name': instance.groupName,
      'group_desc': instance.groupDesc,
      'user_id': instance.userId,
      'user_username': instance.userUsername,
      'nick_name': instance.nickName,
      'user_photo': instance.userPhoto,
      'user_nip': instance.userNip,
      'is_online': instance.isOnline,
      'message_id': instance.messageId,
      'last_message': instance.lastMessage,
      'is_own': instance.isOwn,
      'last_date': instance.lastDate,
      'last_time': instance.lastTime,
      'is_pined': instance.isPined,
      'is_unread_message': instance.unreadMessage,
      'user_count': instance.userCount,
      'message_deleted': instance.messageIsDeleted,
      'label_id': instance.labelId,
      'label_title': instance.labelTitle,
      'label_color': instance.labelColor,
      'detail_last_message': instance.detailLastMessage,
    };
