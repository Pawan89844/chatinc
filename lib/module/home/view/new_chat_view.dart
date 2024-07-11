import 'package:chatinc/module/home/view%20model/contacts_view_model.dart';
import 'package:chatinc/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewChatView extends StatefulWidget {
  const NewChatView({super.key});

  @override
  State<NewChatView> createState() => _NewChatViewState();
}

class _NewChatViewState extends State<NewChatView> {
  @override
  void initState() {
    super.initState();
    Provider.of<ContactViewModel>(context, listen: false).fetchContact();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: viewModel.contact == null
          ? const Center(child: CircularProgressIndicator())
          : viewModel.contact?.isEmpty as bool
              ? const Center(child: AppText('No Contacts found!'))
              : ListView.builder(
                  itemCount: viewModel.contact?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Color(0xFFF8F8F9),
                          child: Icon(Icons.person),
                        ),
                        title: AppText(
                            viewModel.contact?[index].displayName as String),
                        subtitle: const AppText('Status'),
                      ),
                    );
                  },
                ),
    );
  }
}
