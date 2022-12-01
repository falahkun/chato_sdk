import 'package:chato_sdk/src/core/models/list_room_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('testing', () {
    var match = {
      "total": 1,
      "per_page": 20,
      "current_page": "1",
      "prev_page": null,
      "next_page": null,
      "last_page": 1,
      "list_user": [
        {
          "room_id": 1,
          "is_mention": 0,
          "room_type": "D",
          "room_code": "5-1650404892",
          "room_name": "Starcord Company",
          "room_nick_name": "",
          "room_desc": "Starcord Company",
          "room_photo": "",
          "group_name": "",
          "group_desc": "",
          "user_id": 6,
          "user_username": "starcordcompanyy",
          "user_name": "Starcord Company",
          "nick_name": null,
          "user_photo": "",
          "user_nip": 6,
          "is_online": 0,
          "message_id": 60,
          "last_message": "Halo",
          "is_own": 0,
          "last_date": "2022-04-25",
          "last_time": "10:39",
          "is_pined": 0,
          "unread_message": 0,
          "user_count": 0,
          "message_is_deleted": 0,
          "label_id": [],
          "label_title": [],
          "label_color": [],
          "detail_last_message": {
            "message_id": 60,
            "message_text": "Halo",
            "message_type": "text",
            "message_status": "READ",
            "message_attachment": "",
            "from_user_id": 6,
            "to_user_id": 5,
            "from_username": "Starcord Company",
            "to_username": "Starcord Company",
            "is_own": 0,
            "is_deleted": 0
          }
        },
        {
          "room_id": 2,
          "is_mention": 0,
          "room_type": "D",
          "room_code": "5-1650422730",
          "room_name": "arsyila",
          "room_nick_name": "",
          "room_desc": "arsyila",
          "room_photo": "",
          "group_name": "",
          "group_desc": "",
          "user_id": 19,
          "user_username": "arsyila@mailinator.com",
          "user_name": "arsyila",
          "nick_name": null,
          "user_photo": "",
          "user_nip": 19,
          "is_online": 0,
          "message_id": 8,
          "last_message": "Ping at 2",
          "is_own": 1,
          "last_date": "2022-04-20",
          "last_time": "16:27",
          "is_pined": 0,
          "unread_message": 0,
          "user_count": 0,
          "message_is_deleted": 0,
          "label_id": [],
          "label_title": [],
          "label_color": [],
          "detail_last_message": {
            "message_id": 8,
            "message_text": "Ping at 2",
            "message_type": "text",
            "message_status": "PENDING",
            "message_attachment": "",
            "from_user_id": 5,
            "to_user_id": 19,
            "from_username": "Septiana Mundianti",
            "to_username": "arsyila",
            "is_own": 1,
            "is_deleted": 0
          }
        }
      ]
    };
    
    var ex = ListRoomModel.fromJson(match);
    expect(ex.currentPage, "1");
    expect(ex.lastPage, 1);
    expect(ex.listUser.first.roomId, 1);
  });
}