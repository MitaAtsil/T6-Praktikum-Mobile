import 'package:flutter/material.dart';
import 'package:tugas6/models/travel_model.dart';
import 'package:tugas6/screens/detail_page.dart';

Widget gridview() {
  Travel data = Travel();
  return GridView.builder(
    padding: EdgeInsets.all(10),
    itemCount: data.travelData.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemBuilder: (context, index) {
      final item = data.travelData[index];
      return InkWell(
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
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(
                  item['image']!,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                item['title']!,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    },
  );
}