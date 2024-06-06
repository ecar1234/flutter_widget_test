import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class NaverPage extends StatefulWidget {
  const NaverPage({super.key});

  @override
  State<NaverPage> createState() => _NaverPageState();
}

class _NaverPageState extends State<NaverPage> {
  WebViewController _controller = WebViewController();
  bool _canGoBack = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    PlatformWebViewControllerCreationParams params = const PlatformWebViewControllerCreationParams();
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams.fromPlatformWebViewControllerCreationParams(
        params,
      );
    } else if (WebViewPlatform.instance is AndroidWebViewPlatform) {
      params = AndroidWebViewControllerCreationParams.fromPlatformWebViewControllerCreationParams(
        params,
      );
    }
    _controller = WebViewController.fromPlatformCreationParams(params)
      ..loadRequest(Uri.parse("http://www.naver.com"))
      ..canGoBack().then((value) => setState(() {
        _canGoBack = value;
      }))
      ..setNavigationDelegate(NavigationDelegate(onPageFinished: (String url) async {
        bool canGoBack = await _controller.canGoBack();
        setState(() {
          _canGoBack = canGoBack;
        });
      }))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("naver  main"),
        leading: _canGoBack
            ? IconButton(
            onPressed: () {
              if (_canGoBack) {
                _controller.goBack();
              }else if(Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            icon: const Icon(
              Icons.arrow_back,
              // size: 25.0,
            ))
            : null,
      ),
      body: WillPopScope(
        onWillPop: ()async {
          if (_canGoBack) {
            if (kDebugMode) {
              print("before go back");
            }
            _controller.goBack();
            if (kDebugMode) {
              print("after go back");
            }
            return false;
          }
          return true;
        },
         child: WebViewWidget(controller: _controller,)
    ,)
  );
  }
}
