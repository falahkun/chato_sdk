import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

/**
 * {
    "room_id": 1614,
    "message_id": 103790,
    "message_reaction": [],
    "from_user_id": 717,
    "from_emp_id": 0,
    "from_username": "Aka Madya 2",
    "from_username_photo": "",
    "to_user_id": 717,
    "to_username": "Aka Madya 2",
    "to_username_photo": "",
    "message_text": "1",
    "message_type": "text",
    "message_attachment_name": "",
    "message_attachment": "null",
    "message_attachment_thumbnail": "",
    "message_file_duration": 0,
    "message_status": "PENDING",
    "photo": "",
    "message_date": "2022-11-25",
    "message_time": "08:48",
    "user_message_status": "SENDER",
    "message_star": 0,
    "message_is_replay": 0,
    "message_replay_id": "",
    "message_replay_type": "",
    "message_replay_text": "",
    "message_replay_attachment_name": null,
    "message_replay_attachment": null,
    "message_replay_attachment_thumbnail": "",
    "message_replay_file_duration": null,
    "message_replay_username": "",
    "message_is_forward": 0,
    "is_deleted": 0,
    "message_is_broadcast": 0,
    "message_is_pinned": 0,
    "polling_answer": [],
    "polling_vote": 0,
    "polling_is_submit": 0,
    "replay_message": {}
    }
 */
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  @JsonKey(name: 'room_id')
  final int? roomId;
  @JsonKey(name: 'message_id')
  final int? messageId;
  @JsonKey(name: 'message_reaction')
  final dynamic message_reaction;
  @JsonKey(name: 'from_user_id')
  final int? fromUserId;
  @JsonKey(name: 'from_emp_id')
  final int? fromEmpId;
  @JsonKey(name: 'from_username')
  final String? fromUsername;
  @JsonKey(name: 'from_username_photo')
  final String? fromUsernamePhoto;
  @JsonKey(name: 'to_user_id')
  final int? toUserId;
  @JsonKey(name: 'to_username')
  final String? toUsername;
  @JsonKey(name: 'to_username_photo')
  final String? toUsernamePhoto;
  @JsonKey(name: 'message_text')
  final String? messageText;
  @JsonKey(name: 'message_type')
  final String? messageType;
  @JsonKey(name: 'message_attachment_name')
  final String? messageAttachmentName;
  @JsonKey(name: 'message_attachment')
  final String? messageAttachment;
  @JsonKey(name: 'message_file_url')
  final String? messageFileUrl;
  @JsonKey(name: 'message_attachment_thumbnail')
  final String? messageAttachmentThumbnail;
  @JsonKey(name: 'message_file_duration')
  final int? messageFileDuration;
  @JsonKey(name: 'message_status')
  final String? messageStatus;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'message_date')
  final String? messageDate;
  @JsonKey(name: 'message_time')
  final String? messageTime;
  @JsonKey(name: 'user_message_status')
  final String? userMessageStatus;
  @JsonKey(name: 'message_star')
  final int? messageStar;
  @JsonKey(name: 'message_is_replay')
  final int? messageIsRelplay;
  @JsonKey(name: 'message_replay_id')
  final String? messageReplayId;
  @JsonKey(name: 'message_replay_type')
  final String? messageReplayType;
  @JsonKey(name: 'message_replay_text')
  final String? messageReplayText;
  @JsonKey(name: 'message_replay_attachment_name')
  final dynamic? messageReplayAttachmentName;
  @JsonKey(name: 'message_replay_attachment')
  final dynamic? messageReplayAttachment;
  @JsonKey(name: 'message_replay_attachment_thumbnail')
  final dynamic? messageReplayAttachmentThumbnail;
  @JsonKey(name: 'message_replay_file_duration')
  final dynamic? messageReplayFileDuration;
  @JsonKey(name: 'message_replay_username')
  final dynamic? messageReplayUsername;
  @JsonKey(name: 'message_is_forward')
  final int? messageisForward;
  @JsonKey(name: 'is_deleted')
  final int? isDeleted;
  @JsonKey(name: 'message_is_broadcast')
  final int? messageIsBroadcast;
  @JsonKey(name: 'message_is_pinned')
  final int? messageIsPinned;
  @JsonKey(name: 'polling_answer')
  final List<dynamic>? pollingAnswer;
  @JsonKey(name: 'polling_vote')
  final int? pollingVote;
  @JsonKey(name: 'polling_is_submit')
  final int? pollingIsSubmit;
  @JsonKey(name: 'replay_message')
  final dynamic replayMessage;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserModel({
    this.messageFileUrl,
    required this.roomId,
    required this.messageId,
    required this.message_reaction,
    required this.fromUserId,
    required this.fromEmpId,
    required this.fromUsername,
    required this.fromUsernamePhoto,
    required this.toUserId,
    required this.toUsername,
    required this.toUsernamePhoto,
    required this.messageText,
    required this.messageType,
    required this.messageAttachmentName,
    required this.messageAttachment,
    required this.messageAttachmentThumbnail,
    required this.messageFileDuration,
    required this.messageStatus,
    required this.photo,
    required this.messageDate,
    required this.messageTime,
    required this.userMessageStatus,
    required this.messageStar,
    required this.messageIsRelplay,
    required this.messageReplayId,
    required this.messageReplayType,
    required this.messageReplayText,
    required this.messageReplayAttachmentName,
    required this.messageReplayAttachment,
    required this.messageReplayAttachmentThumbnail,
    required this.messageReplayFileDuration,
    required this.messageReplayUsername,
    required this.messageisForward,
    required this.isDeleted,
    required this.messageIsBroadcast,
    required this.messageIsPinned,
    required this.pollingAnswer,
    required this.pollingVote,
    required this.pollingIsSubmit,
    required this.replayMessage,
  });

  Map toJson() => _$UserModelToJson(this);

  UserModel updateMessageStatus(String? newMessageStatus) => UserModel(
        messageFileUrl: messageFileUrl,
        roomId: roomId,
        messageId: messageId,
        message_reaction: message_reaction,
        fromUserId: fromUserId,
        fromEmpId: fromEmpId,
        fromUsername: fromUsername,
        fromUsernamePhoto: fromUsernamePhoto,
        toUserId: toUserId,
        toUsername: toUsername,
        toUsernamePhoto: toUsernamePhoto,
        messageText: messageText,
        messageType: messageType,
        messageAttachmentName: messageAttachmentName,
        messageAttachment: messageAttachment,
        messageAttachmentThumbnail: messageAttachmentThumbnail,
        messageFileDuration: messageFileDuration,
        messageStatus: newMessageStatus ?? messageStatus,
        photo: photo,
        messageDate: messageDate,
        messageTime: messageTime,
        userMessageStatus: userMessageStatus,
        messageStar: messageStar,
        messageIsRelplay: messageIsRelplay,
        messageReplayId: messageReplayId,
        messageReplayType: messageReplayType,
        messageReplayText: messageReplayText,
        messageReplayAttachmentName: messageReplayAttachmentName,
        messageReplayAttachment: messageReplayAttachment,
        messageReplayAttachmentThumbnail: messageReplayAttachmentThumbnail,
        messageReplayFileDuration: messageReplayFileDuration,
        messageReplayUsername: messageReplayUsername,
        messageisForward: messageisForward,
        isDeleted: isDeleted,
        messageIsBroadcast: messageIsBroadcast,
        messageIsPinned: messageIsPinned,
        pollingAnswer: pollingAnswer,
        pollingVote: pollingVote,
        pollingIsSubmit: pollingIsSubmit,
        replayMessage: replayMessage,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        roomId,
        messageFileUrl,
        messageId,
        message_reaction,
        fromUserId,
        fromEmpId,
        fromUsername,
        fromUsernamePhoto,
        toUserId,
        toUsername,
        toUsernamePhoto,
        messageText,
        messageType,
        messageAttachmentName,
        messageAttachment,
        messageAttachmentThumbnail,
        messageFileDuration,
        messageStatus,
        photo,
        messageDate,
        messageTime,
        userMessageStatus,
        messageStar,
        messageIsRelplay,
        messageReplayId,
        messageReplayType,
        messageReplayText,
        messageReplayAttachmentName,
        messageReplayAttachment,
        messageReplayAttachmentThumbnail,
        messageReplayFileDuration,
        messageReplayUsername,
        messageisForward,
        isDeleted,
        messageIsBroadcast,
        messageIsPinned,
        pollingAnswer,
        pollingVote,
        pollingIsSubmit,
        replayMessage,
      ];
}
