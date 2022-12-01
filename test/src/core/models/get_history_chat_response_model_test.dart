import 'package:chato_sdk/src/core/models/get_history_chat_response_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/get_history_chat_response_model_dummy.dart';

void main() {

  final response = {
    "total": 8,
    "per_page": 20,
    "current_page": "1",
    "prev_page": null,
    "next_page": null,
    "last_page": 1,
    "detail_user": {},
    "list_user": [
      {
        "room_id": 1782,
        "message_id": 103798,
        "message_reaction": [],
        "from_user_id": 725,
        "from_emp_id": 0,
        "from_username": "Aka Madya 3",
        "from_username_photo": "",
        "to_user_id": 725,
        "to_username": "Aka Madya 3",
        "to_username_photo": "",
        "message_text": "Teks",
        "message_type": "text",
        "message_attachment_name": "",
        "message_attachment": "null",
        "message_attachment_thumbnail": "",
        "message_file_duration": 0,
        "message_status": "PENDING",
        "photo": "",
        "message_date": "2022-11-25",
        "message_time": "10:34",
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
        "is_deleted": 1,
        "message_is_broadcast": 0,
        "message_is_pinned": 0,
        "polling_answer": [],
        "polling_vote": 0,
        "polling_is_submit": 0,
        "replay_message": {}
      }
    ],
    "group_detail": {
      "group_admin": [],
      "group_type": "OPEN",
      "group_is_active": 1,
      "group_is_deleted": 0,
      "pinned_message": ""
    }
  };
  group('lib/src/core/models/get_history_chat_response_model.dart', () {
    test('test model', () async {
      final act = GetHistoryChatResponseModel.fromJson(response);
      expect(act.total, testGetHistoryChatResponseModel.total);
    });
  });
}