import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = TextEditingController();
  String _searchTerm = "";
  List<String> _items = [  
       "APPLE iPhone 14 Pro Max ",   
       "Apple iPhone 14 128GB ",    
       "Apple iPhone 13 pro",    
       "Apple iPhone 13 ", 
        ];
  List<String> _filteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "Search items",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => _controller.clear(),
            ),
          ),
          onChanged: (value) {
            setState(() {
              _searchTerm = value;
              _filteredItems = _items
                  .where((item) =>
                      item.toLowerCase().contains(_searchTerm.toLowerCase()))
                  .toList();
            });
          },
        ),
      ),
      body: ListView.builder(
        itemCount: _filteredItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredItems[index]),
          );
        },
      ),
    );
  }
}
