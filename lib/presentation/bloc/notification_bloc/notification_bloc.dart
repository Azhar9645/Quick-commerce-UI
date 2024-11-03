import 'package:bloc/bloc.dart';
import 'package:bw_assignment1/data/models/notification_model.dart';
import 'package:bw_assignment1/data/services/api_service.dart';
import 'package:meta/meta.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {

  NotificationBloc() : super(NotificationInitial()) {
    on<FetchAllNotification>(_fetchAllNotification);
  }
  void _fetchAllNotification(
      FetchAllNotification event, Emitter<NotificationState> emit) async {
    try {
      emit(NotificationLoadingState());
      final notifications = await ApiService.getNotification();
      if (notifications.isNotEmpty) {
        emit(NotificationSuccessState(notifications));
      }
    } catch (e) {
      emit(NotificationErrorState('error'));
    }
  }
}
