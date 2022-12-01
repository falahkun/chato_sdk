import 'package:chato_sdk/src/core/models/get_history_chat_response_model.dart';
import 'package:chato_sdk/src/core/models/group_detail_model.dart';
import 'package:chato_sdk/src/core/models/user_model.dart';

final testGetHistoryChatResponseModel = GetHistoryChatResponseModel(
  total: 8,
  perPage: 20,
  currentPage: "1",
  prevPage: null,
  nextPage: null,
  lastPage: 1,
  detailUser: {},
  listUser: testListUserModel,
  groupDetail: testGroupDetailModel,
);

final testGroupDetailModel = GroupDetailModel(
  groupAdmin: [],
  groupType: 'OPEN',
  groupIsActive: 1,
  groupIsDeleted: 0,
  pinnedMessage: "",
);

final testListUserModel = [testUserModel];

final testUserModel = UserModel(
  roomId: 1782,
  messageId: 103798,
  message_reaction: [],
  fromUserId: 725,
  fromEmpId: 0,
  fromUsername: "Aka Madya 3",
  fromUsernamePhoto: "fromUsernamePhoto",
  toUserId: 725,
  toUsername: "Aka Madya 3",
  toUsernamePhoto: "",
  messageText: "Teks",
  messageType: "text",
  messageAttachmentName: "",
  messageAttachment: "null",
  messageAttachmentThumbnail: "",
  messageFileDuration: 0,
  messageStatus: "PENDING",
  photo: "",
  messageDate: "2022-11-25",
  messageTime: "10:34",
  userMessageStatus: "SENDER",
  messageStar: 0,
  messageIsRelplay: 0,
  messageReplayId: "",
  messageReplayType: "",
  messageReplayText: "",
  messageReplayAttachmentName: null,
  messageReplayAttachment: null,
  messageReplayAttachmentThumbnail: "",
  messageReplayFileDuration: null,
  messageReplayUsername: "",
  messageisForward: 0,
  isDeleted: 1,
  messageIsBroadcast: 0,
  messageIsPinned: 0,
  pollingAnswer: [],
  pollingVote: 0,
  pollingIsSubmit: 0,
  replayMessage: {},
);
