import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_test/pages/layout/cupertino_route_page.dart';

class CupertinoPage extends StatelessWidget {
  const CupertinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: CupertinoMain());
  }
}

class CupertinoMain extends StatelessWidget {
  const CupertinoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: "Cupertino app main",
        theme: const CupertinoThemeData(brightness: Brightness.light, primaryColor: CupertinoColors.systemBlue),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.systemIndigo,
            leading: Navigator.canPop(context)
                ? CupertinoNavigationBarBackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            )
                : null,
            middle: const Text("Cupertino page sample"),
          ),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const CupertinoButton(
                onPressed: null,
                child: Text('Disabled'),
              ),
              const SizedBox(height: 30),
              const CupertinoButton.filled(
                onPressed: null,
                child: Text('Disabled'),
              ),
              const SizedBox(height: 30),
              CupertinoButton(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              const SizedBox(height: 30),
              CupertinoButton.filled(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => const CupertinoPage2() ));
                },
                child: const Text('Enabled'),
              ),
            ],
          )),
        ));
  }
}
