import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:api_refresher/features/item_data/controller/item_data_pod.dart';

final voidPod = FutureProvider.autoDispose<void>((ref) async {
  ref.watch(itemDataPod(0));

  return;
});
