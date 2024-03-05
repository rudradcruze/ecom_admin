import 'package:ecom_admin/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ViewUserPage extends StatelessWidget {
  static const String routeName = '/viewUser';
  const ViewUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Users'),),
      body: Consumer<UserProvider>(
        builder: (context, provider, child) => ListView.builder(
          itemCount: provider.userList.length,
          itemBuilder: (context, index) {
            final user = provider.userList[index];
            return ListTile(
              title: Text('${user.displayName}'),
              subtitle: Text('Email: ${user.email}'),
              trailing: Text('Join: ${DateFormat('dd/MM/yy - hh:mm a').format(user.userCreationTime!.toDate())}'),
            );
          },
        ),
      ),
    );
  }
}
