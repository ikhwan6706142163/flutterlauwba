import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:progress_dialog/progress_dialog.dart';

ProgressDialog pd;

class BeritaWisata extends StatefulWidget {
  @override
  _BeritaWisataState createState() => _BeritaWisataState();
}

class _BeritaWisataState extends State<BeritaWisata> {
  @override
  Widget build(BuildContext context) {
    pd = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Wisata"),
      ),
      body: Container(
        child: WebView(
          initialUrl: "https://lauwba.com/",
          onWebViewCreated: (WebViewController c) {
            pd.show();
          },
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: (String url) {
            pd.hide();
          },
        ),
      ),
    );
  }
}
