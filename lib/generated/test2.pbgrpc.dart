///
//  Generated code. Do not modify.
//  source: test2.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'test2.pb.dart' as $0;
export 'test2.pb.dart';

class CalculatorClient extends $grpc.Client {
  static final _$squareRoot = $grpc.ClientMethod<$0.Number, $0.Number>(
      '/Calculator/SquareRoot',
      ($0.Number value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Number.fromBuffer(value));
  static final _$addition = $grpc.ClientMethod<$0.Number, $0.Number>(
      '/Calculator/Addition',
      ($0.Number value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Number.fromBuffer(value));
  static final _$multiplication = $grpc.ClientMethod<$0.Number, $0.Number>(
      '/Calculator/Multiplication',
      ($0.Number value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Number.fromBuffer(value));

  CalculatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Number> squareRoot($0.Number request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$squareRoot, request, options: options);
  }

  $grpc.ResponseFuture<$0.Number> addition($0.Number request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addition, request, options: options);
  }

  $grpc.ResponseFuture<$0.Number> multiplication($0.Number request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$multiplication, request, options: options);
  }
}

abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'Calculator';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Number, $0.Number>(
        'SquareRoot',
        squareRoot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Number.fromBuffer(value),
        ($0.Number value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Number, $0.Number>(
        'Addition',
        addition_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Number.fromBuffer(value),
        ($0.Number value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Number, $0.Number>(
        'Multiplication',
        multiplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Number.fromBuffer(value),
        ($0.Number value) => value.writeToBuffer()));
  }

  $async.Future<$0.Number> squareRoot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Number> request) async {
    return squareRoot(call, await request);
  }

  $async.Future<$0.Number> addition_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Number> request) async {
    return addition(call, await request);
  }

  $async.Future<$0.Number> multiplication_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Number> request) async {
    return multiplication(call, await request);
  }

  $async.Future<$0.Number> squareRoot(
      $grpc.ServiceCall call, $0.Number request);
  $async.Future<$0.Number> addition($grpc.ServiceCall call, $0.Number request);
  $async.Future<$0.Number> multiplication(
      $grpc.ServiceCall call, $0.Number request);
}
