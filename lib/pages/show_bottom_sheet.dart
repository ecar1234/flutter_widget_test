import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowBottomSheetTest extends StatelessWidget {
  const ShowBottomSheetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("show bottom sheet"),
        elevation: 10,
      ),
      body: const BottomSheetMain(),
    );
  }
}
class BottomSheetMain extends StatelessWidget {
  const BottomSheetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){
            Scaffold.of(context).showBottomSheet((context) => const BottomSheetPop());
          },
          child: const Text("Show up"),
      ),
    );
  }
}

class BottomSheetPop extends StatelessWidget {
  const BottomSheetPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text("Show bottom sheet test"),
            const Gap(20.0),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("close"))
          ],
        ),
      ),
    );
  }
}
