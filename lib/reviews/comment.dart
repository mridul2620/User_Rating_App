import 'package:flutter/material.dart';

import '../screens/Profile/widgets/lobal_variables.dart';

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final _controller = TextEditingController();
  List<String> _comments = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_comments[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Add Comment/Review',
                border: OutlineInputBorder(
                  gapPadding: 4,
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: maincolor,
            ),
            onPressed: () {
              setState(() {
                _comments.add(_controller.text);
                _controller.clear();
              });
            },
            child: Text('Post'),
          ),
        ],
      ),
    );
  }
}
