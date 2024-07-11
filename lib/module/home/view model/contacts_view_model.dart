import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactViewModel extends ChangeNotifier {
  List<Contact>? contact;

  void fetchContact() async {
    if (await FlutterContacts.requestPermission()) {
      contact = await FlutterContacts.getContacts();
    }
    notifyListeners();
  }
}
