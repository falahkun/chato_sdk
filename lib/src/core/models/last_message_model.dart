import 'package:chato_sdk/src/core/entities/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'last_message_model.g.dart';

@JsonSerializable()
class LastMessageModel extends Equatable {
  const LastMessageModel(
      {required this.messageId,
      required this.messageText,
      required this.messageType,
      required this.messageStatus,
      required this.messageAttachment,
      required this.fromUserId,
      required this.toUserId,
      required this.fromUsername,
      required this.toUsername,
      required this.isOwn,
      required this.isDeleted});

  factory LastMessageModel.fromJson(Map<String, dynamic> json) =>
      _$LastMessageModelFromJson(json);

  @JsonKey(name: 'message_id', defaultValue: 0)
  final int messageId;
  @JsonKey(name: 'message_text', defaultValue: '')
  final String messageText;
  @JsonKey(name: 'message_type', defaultValue: '')
  final String messageType;
  @JsonKey(name: 'message_status', defaultValue: '')
  final String messageStatus;
  @JsonKey(name: 'message_attachment', defaultValue: '')
  final String messageAttachment;
  @JsonKey(name: 'from_user_id', defaultValue: 0)
  final int fromUserId;
  @JsonKey(name: 'to_user_id', defaultValue: 0)
  final int toUserId;
  @JsonKey(name: 'from_username', defaultValue: '')
  final String fromUsername;
  @JsonKey(name: 'to_username', defaultValue: '')
  final String toUsername;
  @JsonKey(name: 'is_own', defaultValue: 0)
  final int isOwn;
  @JsonKey(name: 'is_deleted', defaultValue: 0)
  final int isDeleted;

  LastMessage toEntity() => LastMessage(
      messageId: messageId,
      messageText: messageText,
      messageType: messageType,
      messageStatus: messageStatus,
      messageAttachment: messageAttachment,
      fromUserId: fromUserId,
      toUserId: toUserId,
      fromUsername: fromUsername,
      toUsername: toUsername,
      isOwn: isOwn,
      isDeleted: isDeleted);

  @override
  // TODO: implement props
  List<Object?> get props => [
        messageId,
        messageText,
        messageType,
        messageStatus,
        messageAttachment,
        fromUserId,
        toUserId,
        fromUsername,
        toUsername,
        isOwn,
        isDeleted
      ];
}
