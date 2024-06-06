import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gap/gap.dart';
import 'package:widget_test/pages/layout/layout_sample.dart';
import 'package:widget_test/pages/list_view.dart';
import 'package:widget_test/pages/package_test.dart';
import 'package:widget_test/pages/snack_bar.dart';
import 'package:widget_test/pages/textfield.dart';

import 'pages/material_banner.dart';
import 'pages/show_bottom_sheet.dart';

void main(){
  runApp(const TestPoint());
}


class TestPoint extends StatelessWidget {
  const TestPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false ,
      title: "widget Test",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Widget Main")),
          backgroundColor: Colors.white10,
          elevation: 5.0,
          shadowColor: Colors.black26,
        ),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const MaterialBannerTest())
                            );
                          },
                          child: const Text("Material Banner")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const ListViewTest())
                            );
                          },
                          child: const Text("List View")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const LayoutSamplePage())
                            );
                          },
                          child: const Text("Layout Sample")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const ShowBottomSheetTest())
                            );
                          },
                          child: const Text("Show Bottom sheet")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const SnackBarTest())
                            );
                          },
                          child: const Text("snackBar test")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const TextFieldTest())
                            );
                          },
                          child: const Text("textField")
                      ),
                      const Gap(20.0),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const PackageTest())
                            );
                          },
                          child: const Text("Package test")
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        ),
      );

  }
}

