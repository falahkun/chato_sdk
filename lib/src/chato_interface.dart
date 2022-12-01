import 'dart:io';

import 'package:chato_sdk/src/core/enum/room_chat_type.dart';
import 'package:chato_sdk/src/core/models/room_detail_model.dart';
import 'package:equatable/equatable.dart';

import 'core/core.dart';
import 'core/models/get_history_chat_response_model.dart';
import 'core/models/message_body.dart';
import 'core/models/models.dart';

abstract class ChatoInterface {
  Future<String> getToken(String clientToken);

  Future<Map?> updateUserToken(String token,
      {required String deviceToken, String deviceType = 'ANDROID'});

  Future<ListRoomModel> getRoomChat(RoomChatParams params);

  Future<ListChatModel> getRoomMessages(RoomMessageParams params);

  Future<GetHistoryChatResponseModel> getHistoryChat(RoomMessageParams params);

  Future<RoomDetailModel> getRoomDetail(String roomCode);

  Future<Map> sendMessage(MessageBody messageBody);

  Future<Map> pinMesage(MessageBody messageBody);

  Future<Map> starMessage(MessageBody messageBody);

  Future<MediaResponseModel> uploadMedia(File file);
}

class RoomChatParams extends Equatable {
  final int page;
  final RoomChatType roomType;

  RoomChatParams({
    required this.page,
    required this.roomType,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        page,
        roomType,
      ];

  @override
  String toString() => 'page=$page&type=${roomType.params}';
}

class RoomMessageParams extends Equatable {
  final int page;
  final String? toUserId;
  final String? roomCode;

  RoomMessageParams({
    this.page = 1,
    required this.toUserId,
    required this.roomCode,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        page,
        toUserId,
        roomCode,
      ];

  @override
  String toString() => 'page=$page&to_user_id=$toUserId&room_code=$roomCode';
}

