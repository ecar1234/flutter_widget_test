import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CrossAxisAlignmentPage extends StatelessWidget {
  const CrossAxisAlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("CrossAxisAlignment"),
      ),
      body: const LayoutFeatureSample(),
    );
  }
}

class LayoutFeatureSample extends StatefulWidget {
  const LayoutFeatureSample({super.key});

  @override
  State<LayoutFeatureSample> createState() => _LayoutFeatureSampleState();
}

class _LayoutFeatureSampleState extends State<LayoutFeatureSample> {
  CrossAxisAlignment _alignment = CrossAxisAlignment.start;
  void _changeAlignment(String type) {
    switch (type){
      case "start" :
        _alignment = CrossAxisAlignment.start;
      case "center" :
        _alignment = CrossAxisAlignment.center;
      case "end" :
        _alignment = CrossAxisAlignment.end;
      case "stretch" :
        _alignment = CrossAxisAlignment.stretch;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15.0,),
          padding: const  EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  _changeAlignment("stretch");
                });
              }, child: const Text("stretch")),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(color: Colors.lightBlue),
                child:  Row(
                  crossAxisAlignment: _alignment,
                  children: const [
                    Icon(Icons.star),
                    Icon(Icons.star, size: 50,),
                    Icon(Icons.star),
                  ],
                ),
              ),
              Container(
                height: 400 ,
                decoration: const BoxDecoration(color: Colors.amber),
                child:  Column(
                  crossAxisAlignment: _alignment,
                  children: const [
                    Icon(Icons.star ),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
