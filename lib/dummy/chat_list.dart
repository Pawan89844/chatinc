import '../module/chat/model/chat_model.dart';

class ChatList {
  static List<ChatModel> chats = [
    ChatModel(id: 0, message: 'Hey', areYou: false),
    ChatModel(id: 1, message: 'Babe', areYou: false),
    ChatModel(
        id: 2,
        message: 'Wanna lunch with me?',
        timeStamp: '12.30 PM',
        areYou: false),
    ChatModel(
        id: 3,
        message: 'Sure, what time?',
        timeStamp: '12.33 PM',
        areYou: true),
    ChatModel(id: 4, message: 'let me think..', areYou: false),
    ChatModel(
        id: 5, message: 'Around 2?', areYou: false, timeStamp: '12.34 PM'),
    ChatModel(
        id: 6, message: 'Okayy, where?', areYou: true, timeStamp: '12.38 PM'),
    ChatModel(
        id: 7,
        message: 'I really want seafood, maybe pecel lele around office?',
        areYou: false,
        timeStamp: '12.38 PM'),
  ];
}
