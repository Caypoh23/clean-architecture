// Package imports:
import 'package:connectivity/connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    ConnectivityResult connectionStatus =
        await connectivity.checkConnectivity();
    return connectionStatus != ConnectivityResult.none;
  }
}
