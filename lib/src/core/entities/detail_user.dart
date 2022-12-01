
import 'package:equatable/equatable.dart';

class DetailUser extends Equatable {
  final int userId;
  final String usserName;
  final bool isOnline;
  final String lastSeen;

  const DetailUser({
    required this.userId,
    required this.usserName,
    this.isOnline = false,
    required this.lastSeen,
  });

  @override
  List<Object?> get props => [userId, usserName, lastSeen, isOnline];
}