import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_test_with_dart_python/generated/test2.pbgrpc.dart';

const serverIp = '192.168.1.68';
const port = 50051;

final channel = ClientChannel(
  serverIp,
  port: port,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
    idleTimeout: Duration(seconds: 5),
  ),
);

void init() {
  channel.onConnectionStateChanged.listen((state) {
    debugPrint('>>>gRPC channel state changed to: $state');
  });
}

Future<void> grpcSquareRootCheck(double val) async {
  debugPrint('gRPC square root func ($val) for $serverIp executing...');

  final stub = CalculatorClient(channel);
  try {
    final res = await stub.squareRoot(Number()..value = val);
    debugPrint('gRPC square root func ($val) for $serverIp executed: $res');
  } catch (e) {
    debugPrint('Server Error: $e');
  }
}

Future<void> grpcAdditionCheck(double val) async {
  debugPrint('gRPC addition func ($val) for $serverIp executing...');

  final stub = CalculatorClient(channel);
  try {
    final res = await stub.addition(Number()..value = val);
    debugPrint('gRPC addition func ($val) for $serverIp executed: $res');
  } catch (e) {
    debugPrint('Server Error: $e');
  }
}

Future<void> grpcMultiplicationCheck(double val) async {
  debugPrint('gRPC multiplication func ($val) for $serverIp executing...');

  final stub = CalculatorClient(channel);
  try {
    final res = await stub.multiplication(Number()..value = val);
    debugPrint('gRPC multiplication func ($val) for $serverIp executed: $res');
  } catch (e) {
    debugPrint('Server Error: $e');
  }
}
