import 'package:api_refresher/features/counter/controller/dio_api_pod.dart';
import 'package:api_refresher/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiFetcher extends StatelessWidget {
  const ApiFetcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final apiStatus = ref.watch(dioApiProvider);
        return apiStatus.easyWhen(
          data: ((data) => Text(data ? 'API is working' : 'API is not working')),
          loadingWidget: () => const CircularProgressIndicator.adaptive(),
          errorWidget: (error, _) => Text('Error: $error'),
          skipLoadingOnRefresh: false,
          skipLoadingOnReload: false,
        );
      },
    );
  }
}
