import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NormalButtons extends StatelessWidget {
  const NormalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Normal Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BackButton(),
            const Gap(10.0),
            const CloseButton(),
            const Gap(10.0),
            const DrawerButton(),
            const Gap(10.0),
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            const Gap(10.0),
            FilledButton(onPressed: () {}, child: const Text("Filled Button")),
            const Gap(10.0),
            // IconButton(onPressed: (){}, icon: icon),
            const Gap(10.0),
            MaterialButton(onPressed: () {},child: const Text("Material Button"),),
            const Gap(10.0),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outlined Button")),
            const Gap(10.0),
            SizedBox(
              height: 50,
              width: 50,
              child: SubmenuButton(
                menuChildren: <Widget>[
                  TextButton(
                      onPressed: () {}, child: const Text("Text Button")),
                  TextButton(
                      onPressed: () {}, child: const Text("Text Button")),
                  TextButton(onPressed: () {}, child: const Text("Text Button"))
                ],
                child: const Icon(
                  Icons.more_vert,
                ),
              ),
            ),
            const Gap(10.0),
            TextButton(onPressed: () {}, child: const Text("Text Button"))
          ],
        ),
      ),
    );
  }
}
