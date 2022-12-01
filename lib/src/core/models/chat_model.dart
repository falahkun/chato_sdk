import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../entities/entities.dart';

part 'chat_model.g.dart';

@JsonSerializable()
class ChatModel extends Equatable {
  @JsonKey(name: 'room_id')
  final int roomId;
  @JsonKey(name: 'message_id')
  final int messageId;
  @JsonKey(name: 'message_reaction')
  final List<dynamic> messageReaction;
  @JsonKey(name: 'from_user_id')
  final int fromUserId;
  @JsonKey(name: 'from_emp_id')
  final int fromEmpId;
  @JsonKey(name: 'from_username')
  final String fromUsername;
  @JsonKey(name: 'from_username_photo')
  final String fromUsernamePhoto;
  @JsonKey(name: 'to_user_id')
  final int toUserId;
  // @JsonKey(name: 'to_emp_id')
  // final int toEmpId;
  @JsonKey(name: 'to_username')
  final String toUsername;
  @JsonKey(name: 'to_username_photo')
  final String toUsernamePhoto;
  @JsonKey(name: 'message_type')
  final String? messageType;
  @JsonKey(name: 'message_text')
  final String? messageText;
  @JsonKey(name: 'message_attachment_name')
  final String? messageAttachmentName;
  @JsonKey(name: 'message_attachment')
  final String? messageAttachment;
  @JsonKey(name: 'message_file_duration')
  final int? messageFileDuration;
  @JsonKey(name: 'message_attachment_thumbnail')
  final String? messageAttachmentThumbnail;
  @JsonKey(name: 'message_status')
  final String? messageStatus;
  final String? photo;
  @JsonKey(name: 'message_date')
  final String? messageDate;
  @JsonKey(name: 'message_time')
  final String? mesageTime;
  @JsonKey(name: 'user_message_status')
  final String? userMessageStatus;
  @JsonKey(name: 'message_star')
  final int? messageStar;
  @JsonKey(name: 'message_is_replay')
  final int? messageIsReplay;
  @JsonKey(name: 'message_replay_type')
  final String? messageReplayType;
  @JsonKey(name: 'message_replay_text')
  final String? messageReplayText;
  @JsonKey(name: 'message_replay_attachment_name')
  final dynamic messageReplayAttachmentName;
  @JsonKey(name: 'message_replay_attachment')
  final dynamic messageReplayAttachment;
  @JsonKey(name: 'message_replay_attachment_thumbnail')
  final String? messageReplayAttachmentThumbnail;
  @JsonKey(name: 'message_replay_username')
  final String? messageReplayUsername;
  @JsonKey(name: 'message_is_forward')
  final int? messageIsForward;
  @JsonKey(name: 'is_deleted')
  final int? isDeleted;
  @JsonKey(name: 'message_is_broadcast')
  final int? messageIsBroadcast;
  @JsonKey(name: 'polling_id')
  final dynamic pollingId;
  @JsonKey(name: 'polling_question')
  final dynamic pollingQuestion;
  @JsonKey(name: 'polling_answer_id_data')
  final dynamic pollingAnswerIdData;
  @JsonKey(name: 'polling_answer_data')
  final dynamic pollingAnswerData;
  @JsonKey(name: 'polling_count_data')
  final dynamic pollingCountData;
  @JsonKey(name: 'polling_count_data_arr')
  final dynamic pollingCountDataArr;
  @JsonKey(name: 'polling_submit_answer_id')
  final dynamic pollingSubmitAnswerId;
  @JsonKey(name: 'polling_result_data')
  final dynamic pollingResultData;
  @JsonKey(name: 'polling_is_submit')
  final dynamic pollingIsSubmit;
  @JsonKey(name: 'message_polling_answer_json')
  final dynamic messagePollingAnswerJson;
  @JsonKey(name: 'message_is_pinned')
  final bool messageIsPinned;
  @JsonKey(name: 'polling_answer')
  final List<dynamic> pollingAnswer;
  @JsonKey(name: 'polling_vote')
  final int pollingVote;
  @JsonKey(name: 'replay_message')
  final dynamic replayMessage;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  const ChatModel(
      {required this.roomId,
      required this.messageId,
      required this.messageReaction,
      required this.fromUserId,
      required this.fromEmpId,
      required this.fromUsername,
      required this.fromUsernamePhoto,
      required this.toUserId,
      // required this.toEmpId,
      required this.toUsername,
      required this.toUsernamePhoto,
      required this.messageType,
      required this.messageText,
      required this.messageAttachmentName,
      required this.messageAttachment,
      required this.messageFileDuration,
      required this.messageAttachmentThumbnail,
      required this.messageStatus,
      required this.photo,
      required this.messageDate,
      required this.mesageTime,
      required this.userMessageStatus,
      required this.messageStar,
      required this.messageIsReplay,
      required this.messageReplayType,
      required this.messageReplayText,
      this.messageReplayAttachmentName,
      this.messageReplayAttachment,
      required this.messageReplayAttachmentThumbnail,
      required this.messageReplayUsername,
      required this.messageIsForward,
      required this.isDeleted,
      required this.messageIsBroadcast,
      this.pollingId,
      this.pollingQuestion,
      this.pollingAnswerIdData,
      this.pollingAnswerData,
      this.pollingCountData,
      this.pollingCountDataArr,
      this.pollingSubmitAnswerId,
      this.pollingResultData,
      this.pollingIsSubmit,
      this.messagePollingAnswerJson,
      required this.messageIsPinned,
      required this.pollingAnswer,
      required this.pollingVote,
      this.replayMessage});

  Map toJson() => _$ChatModelToJson(this);

  @override
  List<Object?> get props => [
        roomId,
        messageId,
        messageReaction,
        fromUserId,
        fromEmpId,
        fromUsername,
        fromUsernamePhoto,
        toUserId,
        // toEmpId,
        toUsername,
        toUsernamePhoto,
        messageType,
        messageText,
        messageAttachmentName,
        messageAttachment,
        messageFileDuration,
        messageAttachmentThumbnail,
        messageStatus,
        photo,
        messageDate,
        mesageTime,
        userMessageStatus,
        messageStar,
        messageIsReplay,
        messageReplayType,
        messageReplayText,
        messageReplayAttachmentName,
        messageReplayAttachment,
        messageReplayAttachmentThumbnail,
        messageReplayUsername,
        messageIsForward,
        isDeleted,
        messageIsBroadcast,
        pollingId,
        pollingQuestion,
        pollingAnswerIdData,
        pollingAnswerData,
        pollingCountData,
        pollingCountDataArr,
        pollingSubmitAnswerId,
        pollingResultData,
        pollingIsSubmit,
        messagePollingAnswerJson,
        messageIsPinned,
        pollingAnswer,
        pollingVote,
        replayMessage
      ];
}
