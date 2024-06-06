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
  final Key _formKey = GlobalKey();
  void _onChangedText(){
    textValue = _controller.value as String;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      // _controller.selection = TextSelection(baseOffset: 0, extentOffset: 5);
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
                decoration: const InputDecoration(
                  labelText: 'E-MAIL',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrangeAccent
                    )
                  ),
                  focusColor: Colors.lightBlue,
                ),
                onChanged: (text){
                  setState(() {
                    textValue = text;
                  });
                },
              ),
              const Gap(20.0),
              Form(
                key: _formKey,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.deepOrangeAccent,
                  decoration: const InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      color: Colors.lightBlue
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue
                      )
                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlue
                        )
                    ),
                    ),
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return '텍스트를 입력하세요';
                    }
                    return null;
                  },
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
      ),
    );
  }
}
