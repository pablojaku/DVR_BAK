import 'package:flutter/material.dart';
import 'package:deaf_virtual_repository/ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pablo\'s Flutter first app',
        theme: ThemeData(
            primarySwatch: Colors.red),
        home: HomeList());
  }
}

// // child that willbe put inside myapp
// class HomeList extends StatefulWidget {
//   @override
//   HomeListState createState() => HomeListState();
// }

// // class for HomeList state (initial categories)
// class HomeListState extends State<HomeList> {
//   Widget build(BuildContext context) {
//     // declare the categories
//     final categories = List<Category>();
//     categories.add(new Category('school', 'these are scools', Icons.school));
//     categories.add(new Category('VR', 'get that money', Icons.monetization_on));
//     categories.add(
//         new Category('Non-Profits', 'Deaf Love', Icons.sentiment_satisfied));

//     // Row  builder
//     Widget _buildRow(String category) {
//       return ListTile(
//         title: Text(category),
//         onTap: () {
//           TextStyle(color: Colors.blue);
//         },
//       );
//     }

//     // list builder
//     Widget _buildScrollView() {
//       return ListView.builder(
//         itemCount: categories == null ? 1 : categories.length + 1,
//         itemBuilder: (context, index) {
//           if (index == 0) {
//             // return the header
//             return new Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Text('Select a topic',
//                         style: DefaultTextStyle.of(context)
//                             .style
//                             .apply(fontSizeFactor: 2.0)),
//                   ],
//                 ));
//           }
//           index -= 1;
//           return Card(
//             //                           <-- Card
//             child: ListTile(
//               title: Text(categories[index].name),
//               trailing: Icon(categories[index].icon),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CategoryList(),
//                     // Pass the arguments as part of the RouteSettings. The
//                     // DetailScreen reads the arguments from these settings.
//                     settings: RouteSettings(
//                       arguments: categories[index],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       );
//     }

//     // final return
//     return Scaffold(
//       appBar: AppBar(title: Text('Deaf Virtual Repository')),
//       body: _buildScrollView(),
//     );
//   }
// }

// // category classes
// class CategoryList extends StatefulWidget {
//   @override
//   CategoryListState createState() => CategoryListState();
// }

// class CategoryListState extends State<CategoryList> {
//   @override
//   Widget build(BuildContext context) {
//     final Category category = ModalRoute.of(context).settings.arguments;

//     // final retur of built screen
//     return Scaffold(
//       appBar: AppBar(title: Text(category.name)),
//       body: Text(category.description),
//     );
//   }

// // creating the class category
// }

// class Category {
//   final String name;
//   final String description;
//   IconData icon;

//   Category(this.name, this.description, this.icon);
// }
