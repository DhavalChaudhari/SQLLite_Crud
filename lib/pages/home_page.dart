import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sql_lite_crud/models/contact.dart';
import 'package:sql_lite_crud/pages/add_contact.dart';
import 'package:sql_lite_crud/pages/contact_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<Contact> _contacts = [];
  // Contact _contact = Contact(id: 0, name: '', mobile: '');
  // final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //_form(),
            ContactList()
          ],
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          // print('button Clicked');
          //AlerBox();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddContact(),
              ));
        },
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // _form() => Container(
  //       color: Colors.white,
  //       padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
  //       child: Form(
  //         key: _formkey,
  //         child: Column(
  //           children: <Widget>[
  //             TextFormField(
  //               decoration: InputDecoration(
  //                   border: OutlineInputBorder(), labelText: 'Name'),
  //               onSaved: (val) => setState(() => _contact.name = val!),
  //               validator: (val) =>
  //                   (val!.length == 0 ? 'This Field is Required.' : null),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             TextFormField(
  //               decoration: InputDecoration(
  //                   border: OutlineInputBorder(), labelText: "Mobile No"),
  //               onSaved: (val) => setState(() => _contact.mobile = val!),
  //               validator: (val) => (val!.length < 10
  //                   ? 'Atleast 10 Characters are required.'
  //                   : null),
  //             ),
  //             ElevatedButton(
  //                 // style: ElevatedButton.styleFrom(
  //                 //     primary: Color.fromARGB(0, 102, 153, 204)),
  //                 onPressed: () {
  //                   _onsubmit();
  //                 },
  //                 child: Text('Add'))
  //           ],
  //         ),
  //       ),
  //     );

  // _onsubmit() {
  //   var form = _formkey.currentState;
  //   if (form!.validate()) {
  //     form.save();
  //     setState(() {
  //       _contacts.add(_contact);
  //     });
  //     form.reset();
  //   }
  // }

  // _list() => Expanded(
  //         child: Card(
  //       color: Colors.white,
  //       margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
  //       child: ListView.builder(
  //         padding: EdgeInsets.all(8),
  //         itemBuilder: (context, index) {
  //           return Column(
  //             children: <Widget>[
  //               ListTile(
  //                 leading: Icon(
  //                   Icons.account_circle,
  //                   //CupertinoIcons.,
  //                   color: Colors.blueGrey,
  //                   size: 40,
  //                 ),
  //                 title: Text(
  //                   _contacts[index].name.toUpperCase(),
  //                   style: TextStyle(
  //                       color: Colors.blueGrey, fontWeight: FontWeight.bold),
  //                 ),
  //                 subtitle: Text(_contacts[index].mobile),
  //                 //trailing: Icon(Icons.),
  //               ),
  //               Divider(
  //                 height: 5.0,
  //               )
  //             ],
  //           );
  //         },
  //         itemCount: _contacts.length,
  //       ),
  //     ));

  //abc() => 5;
}
