import 'package:chato_sdk/src/core/entities/entities.dart';
import 'package:chato_sdk/src/core/models/last_message_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_room_model.g.dart';

@JsonSerializable()
class UserRoomModel extends Equatable {
  const UserRoomModel(
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

  factory UserRoomModel.fromJson(Map<String, dynamic> json) =>
      _$UserRoomModelFromJson(json);

  @JsonKey(name: 'room_id', defaultValue: 0)
  final int roomId;
  @JsonKey(name: 'is_mention', defaultValue: 0)
  final int isMention;
  @JsonKey(name: 'room_type', defaultValue: '')
  final String roomType;
  @JsonKey(name: 'room_code', defaultValue: '')
  final String roomCode;
  @JsonKey(name: 'room_name', defaultValue: '')
  final String roomName;
  @JsonKey(name: 'room_nick_name', defaultValue: '')
  final String roomNickName;
  @JsonKey(name: 'room_desc', defaultValue: '')
  final String roomDesc;
  @JsonKey(name: 'room_photo', defaultValue: '')
  final String roomPhoto;
  @JsonKey(name: 'group_name', defaultValue: '')
  final String? groupName;
  @JsonKey(name: 'group_desc', defaultValue: '')
  final String? groupDesc;
  @JsonKey(name: 'user_id', defaultValue: 0)
  final int userId;
  @JsonKey(name: 'user_username', defaultValue: '')
  final String userUsername;
  @JsonKey(name: 'nick_name', defaultValue: '')
  final String? nickName;
  @JsonKey(name: 'user_photo', defaultValue: '')
  final String? userPhoto;
  @JsonKey(name: 'user_nip', defaultValue: 0)
  final int userNip;
  @JsonKey(name: 'is_online', defaultValue: 0)
  final int isOnline;
  @JsonKey(name: 'message_id', defaultValue: 0)
  final int messageId;
  @JsonKey(name: 'last_message', defaultValue: '')
  final String lastMessage;
  @JsonKey(name: 'is_own', defaultValue: 0)
  final int isOwn;
  @JsonKey(name: 'last_date', defaultValue: '')
  final String lastDate;
  @JsonKey(name: 'last_time', defaultValue: '')
  final String lastTime;
  @JsonKey(name: 'is_pined', defaultValue: 0)
  final int isPined;
  @JsonKey(name: 'is_unread_message', defaultValue: 0)
  final int unreadMessage;
  @JsonKey(name: 'user_count', defaultValue: 0)
  final int userCount;
  @JsonKey(name: 'message_deleted', defaultValue: 0)
  final int messageIsDeleted;
  @JsonKey(name: 'label_id', defaultValue: [])
  final List<dynamic> labelId;
  @JsonKey(name: 'label_title', defaultValue: [])
  final List<dynamic> labelTitle;
  @JsonKey(name: 'label_color', defaultValue: [])
  final List<dynamic> labelColor;
  @JsonKey(name: 'detail_last_message')
  final LastMessageModel detailLastMessage;

  UserRoom toEntity() => UserRoom(
      roomId: roomId,
      isMention: isMention,
      roomType: roomType,
      roomCode: roomCode,
      roomName: roomName,
      roomNickName: roomNickName,
      roomDesc: roomDesc,
      roomPhoto: roomPhoto,
      userId: userId,
      userUsername: userUsername,
      userNip: userNip,
      isOnline: isOnline,
      messageId: messageId,
      lastMessage: lastMessage,
      isOwn: isOwn,
      lastDate: lastDate,
      lastTime: lastTime,
      isPined: isPined,
      unreadMessage: unreadMessage,
      userCount: userCount,
      messageIsDeleted: messageIsDeleted,
      labelId: labelId,
      labelTitle: labelTitle,
      labelColor: labelColor,
      detailLastMessage: detailLastMessage.toEntity());

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
