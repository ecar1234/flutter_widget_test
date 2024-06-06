import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'main_axis_aligment.dart';
import 'cross_axis_aligment.dart';

class LayoutSamplePage extends StatelessWidget {
  const LayoutSamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Layout Main"),
      ),
      body: const LayoutMain(),
    );
  }
}

class LayoutMain extends StatelessWidget {
  const LayoutMain({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MainAxisAlignmentPage()
                      )
                  );
                },
                child: const Text("MainAxisAlignment")
            ),
            const Gap(20.0),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const CrossAxisAlignmentPage()
                      )
                  );
                },
                child: const Text("CrossAxisAlignment")
            ),
          ],
        ),
      ),
    );
  }
}

