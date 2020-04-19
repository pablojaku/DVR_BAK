import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pablo\'s Flutter first app',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.red),
        home: HomeList());
  }
}

// child that willbe put inside myapp
class HomeList extends StatefulWidget {
  @override
  HomeListState createState() => HomeListState();
}

// class for HomeList state (initial categories)
class HomeListState extends State<HomeList> {
  Widget build(BuildContext context) {
    // declare the categories
    final categories = List<Category>();
    categories.add(new Category('school', 'these are scools'));
    categories.add(new Category('VR', 'get that money'));
    categories.add(new Category('Non-Profits', 'Deaf Love'));

    // Row  builder
    Widget _buildRow(String category) {
      return ListTile(
        title: Text(category),
        onTap: () {
          TextStyle(color: Colors.blue);
        },
      );
    }

    Widget _buildScrollView() {
      return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            //                           <-- Card
            child: ListTile(
              title: Text(categories[index].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryList(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: categories[index],
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
      body: _buildScrollView(),
    );
  }
}

// category classes
class CategoryList extends StatefulWidget {
  @override
  CategoryListState createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    // final retur of built screen
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: Text(category.description),
    );
  }

// creating the class category
}

class Category {
  final String name;
  final String description;

  Category(this.name, this.description);
}
