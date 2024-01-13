import 'package:fast_app_base/screen/main/fab/w_floating_dangn_button.state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingButtonStateNotifier extends StateNotifier<FloatingButtonState> {
  FloatingButtonStateNotifier(super.state);

  bool needToMakeButtonBigger = false;

  void toggleMenu() {
    final isExpanded = state.isExpanded;
    final isSmall = state.isSmall;

    state = state.copyWith(
        isExpanded: !state.isExpanded,
        isSmall: needToMakeButtonBigger ? false : true);

    if (needToMakeButtonBigger) {
      needToMakeButtonBigger = false;
    }

    if (!isSmall && !isExpanded) {
      needToMakeButtonBigger = true;
    }
  }

  void changeButtonSize(bool isSmall) {
    if (state.isExpanded) {
      return;
    }

    state = state.copyWith(isSmall: isSmall);
  }

  void hideButton(bool isHide) {
    state = state.copyWith(isHided: isHide);
  }
}

final floatingButtonStateProvider =
    StateNotifierProvider<FloatingButtonStateNotifier, FloatingButtonState>(
  (ref) => FloatingButtonStateNotifier(
    const FloatingButtonState(false, false, false),
  ),
);
