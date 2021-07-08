import 'package:flutter/material.dart';
import 'package:sql_lite_crud/models/contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> _contacts = [];
  // Contact _contact = Contact(id: 0, name: '', mobile: '');
  // final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
      child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  //CupertinoIcons.,
                  color: Colors.blueGrey,
                  size: 40,
                ),
                title: Text(
                  _contacts[index].name.toUpperCase(),
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(_contacts[index].mobile),
                //trailing: Icon(Icons.),
              ),
              Divider(
                height: 5.0,
              )
            ],
          );
        },
        itemCount: _contacts.length,
      ),
    ));
  }
}
