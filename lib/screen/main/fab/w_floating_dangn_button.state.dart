import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_dangn_button.state.freezed.dart';

@freezed
class FloatingButtonState with _$FloatingButtonState {
  const factory FloatingButtonState(
      final bool isExpanded,
      final bool isSmall
      ) = _FloatingButtonState;
}


//  flutter pub run build_runner build --delete-conflicting-outputs
// dart run build runner watch