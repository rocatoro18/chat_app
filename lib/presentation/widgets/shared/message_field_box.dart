import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key, required this.onValue});

  // EL ONVALUE SE UTILIZA PARA REGRESAR EL VALOR
  final ValueChanged<String> onValue;

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.value.text;
            //print('button: $textValue');
            textController.clear();
            onValue(textValue);
          },
          icon: const Icon(Icons.send_outlined)),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        //print('Submit value $value');
        textController.clear();
        // DESPUES DE QUE SE LIMPIA SIEMPRE VOY A QUERER EL FOCUS AHI
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
