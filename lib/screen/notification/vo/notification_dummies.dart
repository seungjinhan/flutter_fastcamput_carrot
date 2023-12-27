import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notification1 = DangnNotification(NotificationType.official,
    '8월 가계부가 도착했어요', '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification2 = DangnNotification(NotificationType.legal, '8월 가계부가 도착했어요',
    '#당근 #가계부', DateTime.now().subtract(3.hours),
    isRead: true);

final notification3 = DangnNotification(NotificationType.local, '8월 가계부가 도착했어요',
    '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification4 = DangnNotification(NotificationType.official,
    '8월 가계부가 도착했어요', '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification5 = DangnNotification(NotificationType.local, '8월 가계부가 도착했어요',
    '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification6 = DangnNotification(NotificationType.official,
    '8월 가계부가 도착했어요', '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification7 = DangnNotification(NotificationType.legal, '8월 가계부가 도착했어요',
    '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification8 = DangnNotification(NotificationType.legal, '8월 가계부가 도착했어요',
    '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification9 = DangnNotification(NotificationType.official,
    '8월 가계부가 도착했어요', '#당근 #가계부', DateTime.now().subtract(3.hours));

final notification10 = DangnNotification(NotificationType.legal,
    '8월 가계부가 도착했어요', '#당근 #가계부', DateTime.now().subtract(3.hours));

List<DangnNotification> notificationList = [
  notification1,
  notification2,
  notification3,
  notification4,
  notification5,
  notification6,
  notification7,
  notification8,
  notification9,
  notification10,
];
