// Mocks generated by Mockito 5.4.2 from annotations
// in architecture/test/core/network/network_info_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:async' as _i3;

// Package imports:
import 'package:connectivity/connectivity.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

import 'package:connectivity_platform_interface/connectivity_platform_interface.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [Connectivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivity extends _i1.Mock implements _i2.Connectivity {
  MockConnectivity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.ConnectivityResult> get onConnectivityChanged =>
      (super.noSuchMethod(
        Invocation.getter(#onConnectivityChanged),
        returnValue: _i3.Stream<_i4.ConnectivityResult>.empty(),
      ) as _i3.Stream<_i4.ConnectivityResult>);
  @override
  _i3.Future<_i4.ConnectivityResult> checkConnectivity() => (super.noSuchMethod(
        Invocation.method(
          #checkConnectivity,
          [],
        ),
        returnValue: _i3.Future<_i4.ConnectivityResult>.value(
            _i4.ConnectivityResult.wifi),
      ) as _i3.Future<_i4.ConnectivityResult>);
}
