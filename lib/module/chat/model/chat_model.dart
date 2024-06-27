class ChatModel {
  final int id;
  final String message;
  final String? timeStamp;
  final bool areYou;

  ChatModel(
      {required this.id,
      required this.message,
      this.timeStamp,
      required this.areYou});
}
