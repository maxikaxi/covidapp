import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      title: "Kindacode.comr",
      home: Webviewpage(),
    );
  }
}

class Webviewpage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long Covid Übungen'),
      ),
      body: Container(
          width: double.infinity,
          // height: 600,
          // the most important part of this example
          child: WebView(
            initialUrl:
                'https://editor.wix.com/html/editor/web/renderer/external_preview/document/042c8a09-d655-4821-9aaf-2a17aa7e83bf/blog?metaSiteId=1aa7772d-c971-44d2-9f7b-59094c608c85',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
