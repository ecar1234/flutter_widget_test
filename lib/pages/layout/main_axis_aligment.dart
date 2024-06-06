import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class MainAxisAlignmentPage extends StatelessWidget {
  const MainAxisAlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("MainAxisAlignment"),
      ),
      body: const LayoutFeatureSample2(),
    );
  }
}

class LayoutFeatureSample2 extends StatefulWidget {
  const LayoutFeatureSample2({super.key});

  @override
  State<LayoutFeatureSample2> createState() => _LayoutFeatureSample2State();
}

class _LayoutFeatureSample2State extends State<LayoutFeatureSample2> {
 
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;

  void _changeAlignment(String type) {
    switch (type){
      case "start" :
        _mainAxisAlignment = MainAxisAlignment.start;
      case "center" :
        _mainAxisAlignment = MainAxisAlignment.center;
      case "end" :
        _mainAxisAlignment = MainAxisAlignment.end;
      case "spaceBetween" :
        _mainAxisAlignment = MainAxisAlignment.spaceBetween;
      case "spaceEvenly" :
        _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
      case "spaceAround" :
        _mainAxisAlignment = MainAxisAlignment.spaceAround;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("start");

                  });
                }, child: const Text("start")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("center");

                  });
                }, child: const Text("center")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("end");

                  });
                }, child: const Text("end")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("spaceBetween");

                  });
                }, child: const Text("spaceBetween")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("spaceEvenly");

                  });
                }, child: const Text("spaceEvenly")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){
                  setState(() {
                  _changeAlignment("spaceAround");

                  });
                }, child: const Text("spaceAround")),
                const Gap(5.0),
                ElevatedButton(onPressed: (){}, child: const Text("baseLine")),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child:  Row(
                mainAxisAlignment: _mainAxisAlignment,
                children: const [
                   Icon(Icons.star),
                   Icon(Icons.star),
                  Icon(Icons.star),
                ],
                ),
              ),
          Expanded(
            child: Container(
            width: 100,
            decoration: const BoxDecoration(color: Colors.amber),
            child:  Column(
              mainAxisAlignment: _mainAxisAlignment,
              children: const [
                Icon(Icons.star ),
                Icon(Icons.star),
                Icon(Icons.star),
               ],
              ),
            )
          ),
           ],
           ),
        )
         ]);
  }
}
