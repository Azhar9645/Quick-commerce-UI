part of 'notification_bloc.dart';

@immutable
sealed class NotificationState {}

final class NotificationInitial extends NotificationState {}

final class NotificationLoadingState extends NotificationState {}

final class NotificationSuccessState extends NotificationState {
  final List<Notification> data;
  NotificationSuccessState(this.data);
}

final class NotificationErrorState extends NotificationState {
  final String message;
  NotificationErrorState(this.message);
}
