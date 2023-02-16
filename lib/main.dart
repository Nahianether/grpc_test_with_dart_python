import 'package:flutter/material.dart';
import 'package:grpc_test_with_dart_python/grpc/send_data.grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () async => await grpcSquareRootCheck(),
            child: const Text('gRPC Square Root Check'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async => await grpcAdditionCheck(),
            child: const Text('gRPC Addition Check'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async => await grpcMultiplicationCheck(),
            child: const Text('gRPC Multiplication Check'),
          )
        ],
      ),
    );
  }
}
