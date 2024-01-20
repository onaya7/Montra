// // external_api_service.dart
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'api_client.dart';
// import 'network_info.dart';

// class ExternalApiService {
//   final ApiClient _apiClient;
//   final NetworkInfo _networkInfo;

//   ExternalApiService(this._apiClient, this._networkInfo);

//   Future<dynamic> getData(String endpoint) async {
//     if (await _networkInfo.isConnected) {
//       final response = await _apiClient.get(endpoint);
//       if (response.statusCode == 200) {
//         return json.decode(response.body);
//       } else {
//         throw Exception('Failed to load data');
//       }
//     } else {
//       throw Exception('No internet connection');
//     }
//   }
// }