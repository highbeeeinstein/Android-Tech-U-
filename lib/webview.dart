import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ForgotWebView extends StatefulWidget {
  const ForgotWebView({ Key? key }) : super(key: key);

  @override
  _ForgotWebViewState createState() => _ForgotWebViewState();
}

class _ForgotWebViewState extends State<ForgotWebView> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),

    // );
    return WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://support.tech-u.edu.ng/index.php?a=add&category=3',
          onWebViewCreated: (controller){
            this.controller = controller;
          },
    );
  }
}