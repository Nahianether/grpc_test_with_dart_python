import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_test_with_dart_python/generated/test2.pbgrpc.dart';

const serverIp = '192.168.1.68';
const port = 50051;

Future<void> grpcSquareRootCheck() async {
  debugPrint('gRPC Client func for $serverIp executing...');
  final channel = ClientChannel(
    serverIp,
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = CalculatorClient(channel);

  final res = await stub.squareRoot(Number()..value = 5);

  debugPrint('gRPC Client func for $serverIp executed: $res');
}

Future<void> grpcAdditionCheck() async {
  debugPrint('gRPC Client func for $serverIp executing...');
  final channel = ClientChannel(
    serverIp,
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = CalculatorClient(channel);

  final res = await stub.addition(Number()..value = 5);

  debugPrint('gRPC Client func for $serverIp executed: $res');
}

Future<void> grpcMultiplicationCheck() async {
  debugPrint('gRPC Client func for $serverIp executing...');
  final channel = ClientChannel(
    serverIp,
    port: port,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final stub = CalculatorClient(channel);

  final res = await stub.multiplication(Number()..value = 5);

  debugPrint('gRPC Client func for $serverIp executed: $res');
}
