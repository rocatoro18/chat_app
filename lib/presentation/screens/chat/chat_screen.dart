import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/presentation/providers/chat_provider.dart';
import 'package:chat_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.fayerwayer.com/resizer/0FyEcFq3nFYrNde78ZzIcoUOwIU=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/FIQLKYNTXFFYJO3DS6FWJS2C4I.jpg'),
            )),
        title: const Text('Elon Musk'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ESTO EXTIENDE EL BUILDCONTEXT
    // ESTO VA A ESTAR PENDIENTE DE LOS CAMBIOS
    // DE LA CLASE CHATPROVIDER
    // ESTAMOS BUSCANDO LA INSTANCIA DE CHAT PROVIDER
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              // AQUI SE ENLAZA EL CONTROLLER
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                // TOMAR INSTANCIA DEL MESSAGE
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.me)
                    ? MyMessageBubble(message: message)
                    : HerMessageBubble(message: message);
              },
            )),
            // CAJA DE TEXTO DE MENSAJES
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    );
  }
}
