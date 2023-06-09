import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:user_rating_app/screens/Profile/user_model.dart';
import 'package:user_rating_app/screens/Profile/user_prefs.dart';
import 'package:user_rating_app/screens/Profile/widgets/button.dart';
import 'package:user_rating_app/screens/Profile/widgets/lobal_variables.dart';
import 'package:user_rating_app/screens/Profile/widgets/profile_widget.dart';
import 'package:user_rating_app/screens/Profile/widgets/textfield.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          title: Text("Review It", style: GoogleFonts.josefinSans(textStyle: boldstyle)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, right: 8, left: 8),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 32),
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {
                  final image =
                      await ImagePicker().getImage(source: ImageSource.gallery);

                  if (image == null) return;
                  final directory = await getApplicationDocumentsDirectory();
                  final name = basename(image.path);
                  final imageFile = File('${directory.path}/$name');
                  final newImage = await File(image.path).copy(imageFile.path);
                  setState(() => user = user.copy(imagePath: newImage.path));
                },
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Full Name',
                text: user.name,
                onChanged: (name) => user = user.copy(name: name),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Email',
                text: user.email,
                onChanged: (email) => user = user.copy(email: email),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'About',
                text: user.about,
                maxLines: 5,
                onChanged: (about) => user = user.copy(about: about),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Current Device Name',
                text: user.dev,
                maxLines: 1,
                onChanged: (dev) => user = user.copy(dev: dev),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Address',
                text: user.address,
                maxLines: 3,
                onChanged: (address) => user = user.copy(address: address),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                child: Text('Save'),
                // style: ButtonStyle(
                //   backgroundColor: maincolor
                // ),
                onPressed: () {
                  UserPreferences.setUser(user);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
}
