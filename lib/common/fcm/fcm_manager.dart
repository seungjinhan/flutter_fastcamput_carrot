import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/snackbar_context_extension.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_dangn_button.riverpod.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FcmManager {
  static void requestPermission() {
    FirebaseMessaging.instance.requestPermission();
  }

  static void initialize(WidgetRef ref) async {
    /// foreground
    FirebaseMessaging.onMessage.listen((event) async {
      final title = event.notification?.title;
      if (title == null) {
        return;
      }

      ref.read(floatingButtonStateProvider.notifier).hideButton(true);
      final controller = App.navigatorKey.currentContext?.showSnackbar(
        title,
        extraButton: Tap(
          onTap: () {
            App.navigatorKey.currentContext!.go(event.data['deeplink']);
          },
          child: '열기'.text.white.bold.make(),
        ),
      );
      final reason = await controller?.closed;

      // await sleepAsync(4.seconds);
      ref.read(floatingButtonStateProvider.notifier).hideButton(false);

      // debugPrint(event.toString());
    });

    /// back ground
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      App.navigatorKey.currentContext!.go(event.data['deeplink']);
    });

    ///
    /// not running
    final firstMsg = await FirebaseMessaging.instance.getInitialMessage();
    if (firstMsg != null) {
      await sleepUntil(() =>
          App.navigatorKey.currentContext != null &&
          App.navigatorKey.currentContext!.mounted);
      final context = App.navigatorKey.currentContext;
      if (context != null && context.mounted) {
        context.go(firstMsg.data['deeplink']);
      }
    }
    final token = await FirebaseMessaging.instance.getToken();
    print(token);
  }
}
