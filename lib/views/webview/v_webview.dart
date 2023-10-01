

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../widget/w_appbar.dart';

class ViewWebView extends StatefulWidget {
  const ViewWebView({super.key, required this.url});
  final String url;
  @override
  State<ViewWebView> createState() => _ViewWebViewState();
}

class _ViewWebViewState extends State<ViewWebView> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: WebViewWidget(controller: controller),
    );
  }
}