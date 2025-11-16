import 'package:flutter/material.dart';
import 'package:tugas6/models/travel_model.dart';
import 'package:tugas6/screens/detail_page.dart';

Widget listview() {
  Travel data = Travel();
  return ListView.builder(
    itemCount: data.travelData.length,
    itemBuilder: (context, index) {
      final item = data.travelData[index];
      return Card(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  title: item['title']!,
                  image: item['image']!,
                ),
              ),
            );
          },
          leading: Image.network(
            item['image'] ?? "",
            width: 100,
            fit: BoxFit.cover,
          ),
          title: Text(item['title'] ?? ""),
        ),
      );
    },
  );
}