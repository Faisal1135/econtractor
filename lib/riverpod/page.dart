import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuProvider extends StateNotifier<int> {
  MenuProvider(state) : super(0);

  changeIndex(int ind) {
    state = ind;
  }
}

final currentPageProvider = StateNotifierProvider<MenuProvider>((ref) {
  return MenuProvider(0);
});
