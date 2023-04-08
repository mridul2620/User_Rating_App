// import 'package:flutter/material.dart';

// class ContactUsPage extends StatefulWidget {
//   @override
//   _ContactUsPageState createState() => _ContactUsPageState();
// }

// class _ContactUsPageState extends State<ContactUsPage> {
//   final _formKey = GlobalKey<FormState>();
//   late String _name;
//   late String _email;
//   late String _message;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Contact Us"),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Name"
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _name = value!,
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Email"
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(
//                   hintText: "Message"
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your message';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _message = value!,
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     // Save the data to your database or send it to your API here
//                   }
//                 },
//                 child: Text("Submit"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'homepage.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: maincolor,
          elevation: 2.0,
          centerTitle: true,
          title: Text(
            "Contact Us",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
        ),
        backgroundColor: Color.fromARGB(215, 246, 233, 233),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ContactUs(
            textColor: Colors.teal,
            companyColor: Colors.white,
            cardColor: Colors.white,
            taglineColor: Colors.white,
            logo: AssetImage('images/pp.jfif'),
            email: 'mridulsrivastava6969@gmail.com',
            companyName: 'Reveiew It',
            //phoneNumberText: '9793711706',
            phoneNumber: '+919793711706',
            dividerThickness: 2,
            //website: 'https://deft-klepon-fbee7c.netlify.app/',
            tagLine: 'Developers',
          ),
        ),
      ),
    );
  }
}
