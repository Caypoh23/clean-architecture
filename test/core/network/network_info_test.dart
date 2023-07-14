// Package imports:
import 'package:connectivity/connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:architecture/core/network/netword_info.dart';
import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockConnectivity mockNetworkInfo;

  setUp(() {
    mockNetworkInfo = MockConnectivity();
    networkInfoImpl = NetworkInfoImpl(mockNetworkInfo);
  });

  group('isConnected', () {
    test('should forward the call to Connectivity.checkConnectivity', () async {
      // arrange
      final tConnectivityResult = ConnectivityResult.wifi;
      when(mockNetworkInfo.checkConnectivity())
          .thenAnswer((_) async => tConnectivityResult);
      // act
      final result = await networkInfoImpl.isConnected;
      final expected = tConnectivityResult != ConnectivityResult.none;
      // assert
      verify(mockNetworkInfo.checkConnectivity());
      expect(result, expected);
    });
  });
}
