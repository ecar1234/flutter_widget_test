import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({super.key});

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  final TextEditingController _controller = TextEditingController();
  String textValue = "";
  void _onChangedText(){
    textValue = _controller.value as String;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      _controller.selection = TextSelection(baseOffset: 0, extentOffset: 5);
      _controller.text = _controller.text.toUpperCase();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("textField sample"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Enter text'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 버튼을 눌렀을 때 특정 텍스트 영역을 선택
                  setState(() {
                    _controller.selection = TextSelection(baseOffset: 7, extentOffset: 14);
                  });
                },
                child: Text('Select "Flutter"'),
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
      ),
    );
  }
}
