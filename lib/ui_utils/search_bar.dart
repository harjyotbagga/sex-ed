import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final hintText;
  final onChanged;

  const SearchBar({
    @required this.onChanged,
    this.hintText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFFFF9B9997),
          ),
          filled: true,
          fillColor: Color(0xFFF6F6F6),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF9B9997)),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF9B9997), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF9B9997), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
