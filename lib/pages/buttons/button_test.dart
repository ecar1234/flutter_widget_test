import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:widget_test/main.dart';
import 'package:widget_test/pages/buttons/normal_buttons.dart';
import 'package:widget_test/pages/buttons/special_buttons.dart';



class ButtonTest extends StatefulWidget {
  const ButtonTest({super.key});

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button test"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("data"),
              accountEmail: const Text("data"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context); // 먼저 Drawer를 닫음
                Future.delayed(const Duration(milliseconds: 300), () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                    (route) => false,
                  );
                });
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const NormalButtons()));
            }, child: const Text("Normal Buttons")),
            const Gap(30.0),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const SpecialButtons()));
            }, child: const Text("Special Buttons"))
          ],
        ),
      ),
    );
  }
}
