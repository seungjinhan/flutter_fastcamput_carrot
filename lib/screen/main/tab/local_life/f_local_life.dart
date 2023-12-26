import 'package:fast_app_base/screen/main/fab/w_floating_dangn_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocalLifeFragment extends ConsumerStatefulWidget {
  const LocalLifeFragment({super.key});

  @override
  ConsumerState<LocalLifeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<LocalLifeFragment> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      final floatingButtonState = ref.read(floatingButtonStateProvider);

      if (scrollController.position.pixels > 300 && !floatingButtonState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(true);
      } else if (scrollController.position.pixels < 100 && floatingButtonState.isSmall) {
        ref.read(floatingButtonStateProvider.notifier).changeButtonSize(false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Image.network('https://picsum.photos/id/403/200/200', fit: BoxFit.fill,),
        Container(height: 500, color: Colors.blue),
        Container(height: 500, color: Colors.orange),
        Container(height: 500, color: Colors.green),
        Container(height: 500, color: Colors.red),
      ],
    );
  }
}
