// // network_info.dart
// import 'package:connectivity/connectivity.dart';

// class NetworkInfo {
//   final Connectivity _connectivity;

//   NetworkInfo(this._connectivity);

//   Future<bool> get isConnected async {
//     var connectivityResult = await _connectivity.checkConnectivity();
//     return connectivityResult != ConnectivityResult.none;
//   }
// }