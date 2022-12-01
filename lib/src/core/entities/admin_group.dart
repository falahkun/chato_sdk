import 'package:equatable/equatable.dart';

class AdminGroup extends Equatable {
  final int userId;
  final String userName;
  final String userUsername;
  final String userPhoto;

  const AdminGroup(
      {required this.userId,
      required this.userName,
      required this.userUsername,
      required this.userPhoto});

  @override
  List<Object?> get props => [
        userId,
        userName,
        userUsername,
        userPhoto,
      ];
}
