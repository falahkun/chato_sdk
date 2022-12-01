import 'package:chato_sdk/src/core/entities/entities.dart';
import 'package:equatable/equatable.dart';

class UserRoom extends Equatable {
  final int roomId;
  final int isMention;
  final String roomType;
  final String roomCode;
  final String roomName;
  final String roomNickName;
  final String roomDesc;
  final String roomPhoto;
  final String? groupName;
  final String? groupDesc;
  final int userId;
  final String userUsername;
  final String? nickName;
  final String? userPhoto;
  final int userNip;
  final int isOnline;
  final int messageId;
  final String lastMessage;
  final int isOwn;
  final String lastDate;
  final String lastTime;
  final int isPined;
  final int unreadMessage;
  final int userCount;
  final int messageIsDeleted;
  final List<dynamic> labelId;
  final List<dynamic> labelTitle;
  final List<dynamic> labelColor;
  final LastMessage detailLastMessage;

  UserRoom(
      {required this.roomId,
      required this.isMention,
      required this.roomType,
      required this.roomCode,
      required this.roomName,
      required this.roomNickName,
      required this.roomDesc,
      required this.roomPhoto,
      this.groupName,
      this.groupDesc,
      required this.userId,
      required this.userUsername,
      this.nickName,
      this.userPhoto,
      required this.userNip,
      required this.isOnline,
      required this.messageId,
      required this.lastMessage,
      required this.isOwn,
      required this.lastDate,
      required this.lastTime,
      required this.isPined,
      required this.unreadMessage,
      required this.userCount,
      required this.messageIsDeleted,
      required this.labelId,
      required this.labelTitle,
      required this.labelColor,
      required this.detailLastMessage});

  @override
  // TODO: implement props
  List<Object?> get props => [
        roomId,
        isMention,
        roomType,
        roomCode,
        roomName,
        roomNickName,
        roomDesc,
        roomPhoto,
        this.groupName,
        this.groupDesc,
        userId,
        userUsername,
        this.nickName,
        this.userPhoto,
        userNip,
        isOnline,
        messageId,
        lastMessage,
        isOwn,
        lastDate,
        lastTime,
        isPined,
        unreadMessage,
        userCount,
        messageIsDeleted,
        labelId,
        labelTitle,
        labelColor,
        detailLastMessage
      ];
}
