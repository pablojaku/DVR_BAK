import 'package:flutter/material.dart';

import 'package:deaf_virtual_repository/global.dart';
import 'package:deaf_virtual_repository/ui/screens/category.dart';

// class for HomeList state (initial categories)
class HomeList extends StatelessWidget {
  Widget build(BuildContext context) {
    // categories list builder
    Widget _buildCategoriesScrollView() {
      return ListView.builder(
        itemCount: categoriesList == null ? 1 : categoriesList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            // return the header
            return new Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Select a topic',
                        style: DefaultTextStyle.of(context)
                            .style
                            .apply(fontSizeFactor: 2.0)),
                  ],
                ));
          }
          index -= 1;
          // categories cards
          return Card(
            //                           <-- Card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              title: Text(categoriesList[index].name),
              subtitle: Text(categoriesList[index].description),
              trailing: Icon(categoriesList[index].icon),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryList(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: categoriesList[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      );
    }

    // final return
    return Scaffold(
      appBar: AppBar(title: Text('Deaf Virtual Repository')),
      body: _buildCategoriesScrollView(),
    );
  }
}
