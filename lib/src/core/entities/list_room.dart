import 'package:equatable/equatable.dart';

import 'entities.dart';

class ListRoom extends Equatable {
  final int total;
  final int perPage;
  final int currentPage;
  final int lastPage;
  final List<UserRoom> listUser;

  ListRoom({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.listUser,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [total, perPage, currentPage, lastPage, listUser];
}