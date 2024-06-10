import 'package:flutter/cupertino.dart';

class CupertinoPage2 extends StatelessWidget {
  const CupertinoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(navigationBar: CupertinoNavigationBar(middle: Text("page2"),),child: Center(child: Text("Page2"),));
  }
}
