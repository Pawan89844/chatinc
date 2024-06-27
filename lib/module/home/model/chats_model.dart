class ChatsModel {
  final int id;
  final String name;
  final String lastMsg;
  final String profileAvatar;
  final String lastMsgTime;
  final bool onlineSatus;

  ChatsModel(this.id, this.name, this.lastMsg, this.profileAvatar,
      this.lastMsgTime, this.onlineSatus);
}
