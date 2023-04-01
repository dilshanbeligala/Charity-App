import 'dart:io';
import 'package:flutter/material.dart';
import '../errors/connection_lost.dart';

class InternetCheckWrapper extends StatefulWidget {
  final Widget child;
  InternetCheckWrapper({required this.child});

  @override
  _InternetCheckWrapperState createState() => _InternetCheckWrapperState();

  static _InternetCheckWrapperState? of(BuildContext context, {bool root = false}) {
    return root
        ? context.findRootAncestorStateOfType<_InternetCheckWrapperState>()
        : context.findAncestorStateOfType<_InternetCheckWrapperState>();
  }
}

class _InternetCheckWrapperState extends State<InternetCheckWrapper> {
  bool _isConnected = true;

  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          _isConnected = true;
        });
        return true;
      } else {
        setState(() {
          _isConnected = false;
        });
        return false;
      }
    } on SocketException catch (_) {
      setState(() {
        _isConnected = false;
      });
      return false;
    }
  }

  bool isConnected() {
    return _isConnected;
  }

  @override
  Widget build(BuildContext context) {
    if (_isConnected) {
      return widget.child;
    } else {
      return ConnectionLost();
    }
  }

  @override
  void initState() {
    super.initState();
    checkInternetConnection();
  }
}


