class Notification {

  final String title;
  final String subtitle;
  final String time;

  Notification({
    required this.title,
    required this.subtitle,
    required this.time,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        title: json['title'],
      subtitle: json['body'],
      time: json['timestamp'],
      );
}