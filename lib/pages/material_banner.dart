import 'package:flutter/material.dart';

class MaterialBannerTest extends StatelessWidget {
  const MaterialBannerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Material Banner"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                    content: const Text("Show up banner"),
                    actions: <Widget> [
                      TextButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                          },
                          child: const Text("close")
                      ),
                      TextButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                            Navigator.of(context).pop();
                          },
                          child: const Text("back")
                      )
                    ],
            )
            );
          },
          child: const Text("material banner"),
        ),
      ),
    );
  }
}
