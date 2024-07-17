import 'package:flutter/material.dart';
import 'package:mypropertyapp/views/detail.dart';
import 'package:mypropertyapp/views/listpage.dart';
import 'package:mypropertyapp/views/propertycard.dart';

class listScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listpage(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            PropertyCard(
              imageUrl:
                  'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              title: 'Craftsman House',
              address: '520 N Beaudry Ave, Los Angeles',
              beds: 4,
              baths: 4,
              garage: 1,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailScreen(),
                  ),
                );
              },
            ),
            PropertyCard(
              imageUrl:
                  'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              title: 'Craftsman House 1',
              address: '520 N Beaudry Ave, Los Angeles',
              beds: 4,
              baths: 4,
              garage: 1,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyDetailScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
