import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button test"),
      ),
      body: Center(
        child: Column(
          children: [
            BackButton(),
            CloseButton(),
            DrawerButton(),
            ElevatedButton(onPressed: (){}, child: const Text("ElevatedButton")),
            // DropdownButton(items: items, onChanged: (){}),
            FilledButton(onPressed: (){}, child: const Text("ElevatedButton")),
            // IconButton(onPressed: (){}, icon: icon),
            MaterialButton(onPressed: (){}),
            OutlinedButton(onPressed: (){}, child: const Text("ElevatedButton")),
            // SegmentedButton(segments: segments, selected: selected),
            // SubmenuButton(menuChildren: menuChildren, child: const Text("ElevatedButton")),
            TextButton(onPressed: (){}, child: const Text("ElevatedButton"))

          ],
        ),
      ),
    );
  }
}
