import 'package:flutter/material.dart';
import 'package:sql_lite_crud/models/contact.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  List<Contact> _contacts = [];
  Contact _contact = Contact(id: 0, name: '', mobile: '');
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add new Contact'),
      content: Form(
        child: Wrap(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Name'),
              onSaved: (val) => setState(() => _contact.name = val!),
              validator: (val) =>
                  (val!.length == 0 ? 'This Field is Required.' : null),
            ),
            SizedBox(
              height: 65,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mobile No"),
              onSaved: (val) => setState(() => _contact.mobile = val!),
              validator: (val) => (val!.length < 10
                  ? 'Atleast 10 Characters are required.'
                  : null),
            ),
            Center(
              child: ElevatedButton(

                  // style: ElevatedButton.styleFrom(
                  //     primary: Color.fromARGB(0, 102, 153, 204)),
                  onPressed: () {
                    _onsubmit();
                  },
                  child: Text('Add')),
            )
          ],
        ),
      ),
    );
  }

  _onsubmit() {
    var form = _formkey.currentState;
    if (form!.validate()) {
      form.save();
      setState(() {
        _contacts.add(_contact);
      });
      print(_contact.name);
    }
  }
}
