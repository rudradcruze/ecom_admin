import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showMsg(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor: Colors.purple.shade200,
  ));
}

shoSingleTextInputDialog({
  required BuildContext context,
  required String title,
  required String hintText,
  TextInputType keyboardType = TextInputType.text,
  String positiveBtnText = 'Save',
  String negativeBtnText = 'Close',
  required Function(String) onSave,
}) {
  final controller = TextEditingController();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: hintText,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(negativeBtnText),
        ),
        ElevatedButton(
          onPressed: () {
            if (controller.text.isEmpty) return;
            onSave(controller.text);
            Navigator.pop(context);
          },
            child: Text(positiveBtnText),
        )
      ],
    ),
  );
}
