import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sas/constants.dart';
import 'package:sas/register/data/local/cach_keys.dart';
import 'package:sas/register/data/local/cache.dart';

class DioHelper {
  Dio dio = Dio();

  Future<Response> getData({required String endPoint}) async {
    print("In GetData");
    Response response = await dio.get(
      baseUrl + endPoint,
      options: Options(
        headers: {
            //api key
        }
      )
    );
    print("After GetData");
    return response;
  }
  Future<Response> postData({
    bool handleError = true,
    required String endPoint,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      Response response = await dio.post(
        baseUrl + endPoint,
        data: body,
        options: Options(
          headers: {

          },
        ),
      );
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 204 ||
          response.statusCode == 200 ||
          response.statusCode == 201) {
      } else if (response.statusCode == 403) {
        if (kDebugMode) {
          print(response.data);
        }
      }
      return response;
    } on DioError catch (error) {
      rethrow;
    }
  }

  Future<Response> postDataWithoutAuth({
    bool handleError = true,
    required String endPoint,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      Response response = await dio.post(
        baseUrl + endPoint,
        data: body,
      );
      if (kDebugMode) {
        print(response.data);
      }
      if (response.statusCode == 204 ||
          response.statusCode == 200 ||
          response.statusCode == 201) {
      } else if (response.statusCode == 403) {
        if (kDebugMode) {
          print(response.data);
        }
      }
      return response;
    } on DioError catch (error) {
      rethrow;
    }
  }

  Future<Response> putData({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    print('data 2');
    return await dio.put('${baseUrl}$endPoint',
        data: body,
        options: Options(
          headers: {
            "authorization":
            "Bearer ${MyCache.getString(key: CacheKeys.token)}",
          },
        ));
  }

  Future<Response> patchData({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    print('PATCH');
    return await dio.patch('${baseUrl}$endPoint',
        data: body,
        options: Options(headers: {
          "x-api-key": "6c20f27d-1f96-4be9-ac5d-b582305474a6",
        }));
  }

  /// Cart
  Future<Response> deleteFromCart({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    // print('data 2');
    return await dio.put('${baseUrl}$endPoint',
        data: body,
        options: Options(
          headers: {
            "authorization":
            "Bearer ${MyCache.getString(key: CacheKeys.token)}",
          },
        ));
    // print('data3');
  }

  Future<Response> deleteData({
    required String endPoint,
    Map<String, dynamic>? body,
    // String? token,
  }) async {
    return await dio.delete(
      baseUrl + endPoint,
      data: body,
      options: Options(
        headers: {
          "authorization": "Bearer ${MyCache.getString(key: CacheKeys.token)}",
        },
      ),
    );
  }

  static void logout(BuildContext context) async {
    await MyCache.clearShared();
    Navigator.pushReplacementNamed(context, 'checkScreen');
  }
}