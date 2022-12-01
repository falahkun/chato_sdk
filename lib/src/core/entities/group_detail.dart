import 'package:equatable/equatable.dart';
import './entities.dart';

class GroupDetail extends Equatable {
  final String groupType;
  final bool groupIsActive;
  final bool groupIsDeleted;
  final String pinnedMessage;
  final List<AdminGroup> groupAdmin;

  const GroupDetail(
      {required this.groupAdmin,
      required this.groupType,
      required this.groupIsActive,
      required this.groupIsDeleted,
      required this.pinnedMessage});

  @override
  List<Object?> get props => [
        groupAdmin,
        groupType,
        groupIsActive,
        groupIsDeleted,
        pinnedMessage,
      ];
}
