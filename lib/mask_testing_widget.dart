import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskTestingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      // initialText: '7',
      filter: {"#": RegExp(r'[0-9]')},
    );
    TextEditingController textEditingController = TextEditingController(text: "+7");
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.phone,
            controller: textEditingController,
            autocorrect: false,
            inputFormatters: [maskFormatter],
            decoration: InputDecoration(
              labelText: 'hello',
              hintText: "+7 (123) 456-78-90",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(maskFormatter.getMaskedText());
              print(maskFormatter.getUnmaskedText());
            },
            child: Text('show info'),
          )
        ],
      ),
    );
  }
}
