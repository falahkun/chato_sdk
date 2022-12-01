import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final int roomId;
  final int messageId;
  final List<dynamic> messageReaction;
  final int fromUserId;
  final int fromEmpId;
  final String fromUsername;
  final String fromUsernamePhoto;
  final int toUserId;
  final int toEmpId;
  final String toUsername;
  final String toUsernamePhoto;
  final String messageType;
  final String messageText;
  final String messageAttachmentName;
  final String messageAttachment;
  final int messageFileDuration;
  final String messageAttachmentThumbnail;
  final String messageStatus;
  final String photo;
  final String messageDate;
  final String mesageTime;
  final String userMessageStatus;
  final bool messageStar;
  final bool messageIsReplay;
  final String messageReplayType;
  final String messageReplayText;
  final dynamic messageReplayAttachmentName;
  final dynamic messageReplayAttachment;
  final String messageReplayAttachmentThumbnail;
  final String messageReplayUsername;
  final bool messageIsForward;
  final bool isDeleted;
  final bool messageIsBroadcast;
  final dynamic pollingId;
  final dynamic pollingQuestion;
  final dynamic pollingAnswerIdData;
  final dynamic pollingAnswerData;
  final dynamic pollingCountData;
  final dynamic pollingCountDataArr;
  final dynamic pollingSubmitAnswerId;
  final dynamic pollingResultData;
  final dynamic pollingIsSubmit;
  final dynamic messagePollingAnswerJson;
  final bool messageIsPinned;
  final List<dynamic> pollingAnswer;
  final int pollingVote;
  final dynamic replayMessage;

  const Chat({
    required this.roomId,
    required this.messageId,
    required this.messageReaction,
    required this.fromUserId,
    required this.fromEmpId,
    required this.fromUsername,
    required this.fromUsernamePhoto,
    required this.toUserId,
    required this.toEmpId,
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
    this.replayMessage,
  });

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
        toEmpId,
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
        replayMessage,
      ];
}
