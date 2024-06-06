import 'package:flutter/material.dart';

class ListViewTest extends StatefulWidget {
  const ListViewTest({super.key});

  @override
  State<ListViewTest> createState() => _ListViewTestState();
}

class _ListViewTestState extends State<ListViewTest> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView(
                    children: [
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          border: const Border(),
                          borderRadius: const BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: const Center(child: Text("Entry A")),
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[500],
                            border: const Border(),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: const Center(child: Text("Entry B")),
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[600],
                            border: const Border(),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)
                            )
                        ),
                        child: const Center(child: Text("Entry C")),
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                  itemCount: entries.length,
                  itemBuilder: (context, int index){
              return Container(
                  height: 50,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber[colorCodes[index]],
                      border: const Border(),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)
                      )
                  ),
                child: Center(
                    child: Text('Entry${entries[index]}')
                ),
              );
            }),
                )
            ), // Expanded(child: child)
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.separated(
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: 50,
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: Colors.red[colorCodes[index]],
                          border: const Border(),
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)
                          )
                      ),
                      child: Center(
                          child: Text('Entry${entries[index]}')
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemCount: entries.length),
                ))
          ],
        ),
      )
      );
  }
}
