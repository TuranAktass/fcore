import 'package:flutter/material.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

class StompSocketClient {
  StompClient? client;

  final String baseUrl;
  final String destination;
  final String token;
  final Function(dynamic model) onMessageReceived;
  var subscriptionFlag = false;

  StompSocketClient({
    required this.baseUrl,
    required this.destination,
    required this.token,
    required this.onMessageReceived,
  });

  void init() {
    if (client != null && client!.isActive) {
      return;
    }
    client = StompClient(
      config: StompConfig.sockJS(
        url: baseUrl,
        onConnect: onConnectCallback,
        onWebSocketError: (error) =>
            debugPrint("WEB SOCKET ERROR : ${error.toString()}"),
        onStompError: (error) => debugPrint("STOMP Error: ${error.toString()}"),
        webSocketConnectHeaders: {'Authorization': 'Bearer $token'},
      ),
    );
    client!.activate();
  }

  void onConnectCallback(StompFrame frame) {
    debugPrint('Connected!');
    client!.subscribe(
      destination: destination,
      headers: {'Authorization': 'Bearer $token'},
      callback: (frame) {
        String? message = frame.body;
        if (message != null) {
          debugPrint('Client 1 message: ${message.toString()}');
          onMessageReceived(message);
        } else {
          debugPrint('Received an empty message or null body.');
        }
      },
    );
  }

  void disconnect() {
    if (client != null && client!.isActive) {
      client!.deactivate();
      debugPrint('Disconnected from STOMP');
    }
  }
}
