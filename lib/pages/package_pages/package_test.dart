import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:widget_test/pages/package_pages/webview_naver.dart';


class PackageTest extends StatefulWidget {
  const PackageTest({super.key});

  @override
  State<PackageTest> createState() => _PackageTestState();
}

class _PackageTestState extends State<PackageTest> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("package test main"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: const ButtonStyle(
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const NaverPage()
                  )
                );
              },
              child: const Text("To naver")
            ),
          ],
        ),
      ),
    );
  }
}
