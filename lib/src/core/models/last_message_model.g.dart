// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastMessageModel _$LastMessageModelFromJson(Map<String, dynamic> json) =>
    LastMessageModel(
      messageId: json['message_id'] as int? ?? 0,
      messageText: json['message_text'] as String? ?? '',
      messageType: json['message_type'] as String? ?? '',
      messageStatus: json['message_status'] as String? ?? '',
      messageAttachment: json['message_attachment'] as String? ?? '',
      fromUserId: json['from_user_id'] as int? ?? 0,
      toUserId: json['to_user_id'] as int? ?? 0,
      fromUsername: json['from_username'] as String? ?? '',
      toUsername: json['to_username'] as String? ?? '',
      isOwn: json['is_own'] as int? ?? 0,
      isDeleted: json['is_deleted'] as int? ?? 0,
    );

Map<String, dynamic> _$LastMessageModelToJson(LastMessageModel instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'message_text': instance.messageText,
      'message_type': instance.messageType,
      'message_status': instance.messageStatus,
      'message_attachment': instance.messageAttachment,
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'from_username': instance.fromUsername,
      'to_username': instance.toUsername,
      'is_own': instance.isOwn,
      'is_deleted': instance.isDeleted,
    };
