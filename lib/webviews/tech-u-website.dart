import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Tech_U_Website extends StatefulWidget {
  const Tech_U_Website({ Key? key }) : super(key: key);

  @override
  _Tech_U_WebsiteState createState() => _Tech_U_WebsiteState();
}

class _Tech_U_WebsiteState extends State<Tech_U_Website> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://tech-u.edu.ng/',
    );
  }
}