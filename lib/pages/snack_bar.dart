import 'package:flutter/material.dart';

class SnackBarTest extends StatelessWidget {
  const SnackBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack bar "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: const Text("complete!!"),
                    action: SnackBarAction(
                        label: "Undo",
                        onPressed: (){
                      Navigator.pop(context);
                    }),
                  )
                );
              },
              child: const Text("show snack bar"),
            ),
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Custom snack bar"),
                      // action: SnackBarAction(
                      //     label: "Undo",
                      //     onPressed: (){
                      //       Navigator.pop(context);
                      //     }),
                      duration: Duration(milliseconds: 3000),
                      width: 300.0,
                      behavior: SnackBarBehavior.floating,
                      padding:  EdgeInsets.all(10.0),
                      showCloseIcon: true,
                    )
                );
              },
              child: const Text("custom snack bar"),
            ),
          ],
        ),
      ),
    );
  }
}
