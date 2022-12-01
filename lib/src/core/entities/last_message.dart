import 'package:equatable/equatable.dart';

class LastMessage extends Equatable {
  final int messageId;
  final String messageText;
  final String messageType;
  final String messageStatus;
  final String messageAttachment;
  final int fromUserId;
  final int toUserId;
  final String fromUsername;
  final String toUsername;
  final int isOwn;
  final int isDeleted;

  LastMessage(
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