enum FromWho { me, hers }

// ESTA ES LA ENTIDAD DE COMO LUCIRAN NUESTRO MENSAJES
class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}
