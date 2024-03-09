import 'package:connectivity_plus/connectivity_plus.dart';

extension ConnectivityExtension on ConnectivityResult {
  bool get hasInternetConnection {
     return this == ConnectivityResult.mobile || this == ConnectivityResult.wifi;
  }
} 