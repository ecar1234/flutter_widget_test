import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({super.key});

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  final TextEditingController _textController = TextEditingController();
  String textValue = "";
  void _onChangedText(){
    textValue = _textController.value as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("textField sample"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              height: 300.0,
              color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _textController,
                    onChanged: (text){setState(() {
                      textValue = text;
                    });}
                  ),
                  const Gap(20.0),
                  TextFormField()
                ],
              ),
            ),
            const Gap(20.0),
            SizedBox(
              height: 200,
              child: RichText(
                text: TextSpan(
                  text: 'first textfield value ',
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.black
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: ':', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: textValue),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
