import 'package:chato_sdk/src/core/models/list_chat_model.dart';
import 'package:chato_sdk/src/core/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockDetailLastMessage extends Mock implements LastMessageModel {}
void main() {
  final json = {
    "success": true,
    "message": "Get History Chat v2",
    "result": {
      "total": 97,
      "per_page": 20,
      "current_page": "1",
      "prev_page": null,
      "next_page": "11",
      "last_page": 5,
      "detail_user": {},
      "list_user": [
        {
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
        },
      ],
      "group_detail": {
        "group_admin": [],
        "group_type": "OPEN",
        "group_is_active": 1,
        "group_is_deleted": 0,
        "pinned_message": ""
      }
    }
  };

  final testListRoom = ListRoomModel(
      total: 1, perPage: 20, currentPage: "1", lastPage: 0, listUser: []);
  final testUserRoom = UserRoomModel(
      roomId: 0,
      isMention: 1,
      roomType: "D",
      roomCode: "",
      roomName: "induk",
      roomNickName: "",
      roomDesc: "",
      roomPhoto: "",
      userId: 876,
      userUsername: "induk",
      userNip: 876,
      isOnline: 0,
      messageId: 0,
      lastMessage: "",
      isOwn: 0,
      lastDate: "2022-11-24",
      lastTime: "16:15",
      isPined: 0,
      unreadMessage: 0,
      userCount: 0,
      messageIsDeleted: 0,
      labelId: [],
      labelTitle: [],
      labelColor: [],
      detailLastMessage: MockDetailLastMessage());
  test('test', () async {
    final act = ListRoomModel.fromJson(json);
  });
}
