import 'package:api_refresher/shared/api_client/dio/dio_client_provider.dart';
import 'package:api_refresher/shared/riverpod_ext/cache_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioApiProvider = FutureProvider.autoDispose<bool>(
  (ref) async {
    //set the duration in which the api should be refreshed
    ref.autoRefresh(duration: const Duration(minutes: 5));
    //set the endPoint
    const String endPoint = '<your_endPoint>';
    //make the api call
    final response = await ref.watch(dioProvider).get(
          endPoint,
          //any header you want to pass during the api call
          options: Options(
            //remove this line if you don't have any header to pass
            headers: {'Authorization': 'Bearer <jwt_token>'},
          ),
        );
    return response.statusCode == 200;
  },
);
