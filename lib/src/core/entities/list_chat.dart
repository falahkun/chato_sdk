
import 'package:equatable/equatable.dart';

import 'entities.dart';

class ListChat extends Equatable {
  final int total;
  final int perPage;

  final DetailUser detailUser;
  final List<Chat> chat;

  final GroupDetail? groupDetail;

  const ListChat(
      {required this.total,
        required this.perPage,
        required this.detailUser,
        this.groupDetail,
        required this.chat});

  @override
  List<Object?> get props => [total, perPage, detailUser, chat];
}
