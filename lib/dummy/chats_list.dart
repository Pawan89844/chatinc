import 'package:chatinc/module/home/model/chats_model.dart';

class ChatsList {
  static List<ChatsModel> chatsList = <ChatsModel>[
    ChatsModel(1, 'Pawan', 'What\'s up?', '', '12.30 PM', true),
    ChatsModel(2, 'Neeraj', 'Something is missing?', '', '12.30 PM', false),
    ChatsModel(
        3, 'Simran', 'Awesome, when is the plan?', '', '12.30 PM', false),
    ChatsModel(4, 'Sumit', 'Trying to reach you buddy.', '', '12.30 PM', false),
    ChatsModel(5, 'Divya', 'Yo! everything is good', '', '12.30 PM', true),
    ChatsModel(
        6, 'Rahul', 'Amazing man! happy for you.', '', '12.30 PM', false),
    ChatsModel(7, 'Karishma', 'Are you sure?', '', '12.30 PM', true),
    ChatsModel(8, 'Anup', 'Getting married', '', '12.30 PM', false),
    ChatsModel(9, 'Virat', 'Something strange', '', '12.30 PM', false),
    ChatsModel(10, 'Viraj', 'Good to hear! when are we meeting?', '',
        '12.30 PM', true),
  ];

  static List<ChatsModel> pinnedList = [
    ChatsModel(7, 'Karishma', 'Are you sure?', '', '12.30 PM', true),
    ChatsModel(8, 'Anup', 'Getting married', '', '12.30 PM', false),
  ];
}
