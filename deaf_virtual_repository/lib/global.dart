import 'package:flutter/material.dart';

// category model
class CategoryModel {
  final int id;
  final String name;
  final String description;
  IconData icon;
  final List resourcesList;

  CategoryModel(
      this.id, this.name, this.description, this.icon, this.resourcesList);
}

// categories data
final List<CategoryModel> categoriesList = [
  CategoryModel(
      1, 'School', 'these are scools', Icons.school, schoolResourcesList),
  CategoryModel(
      2, 'VR', 'get that money', Icons.monetization_on, vrResourcesList),
  CategoryModel(3, 'Non-Profits', 'Deaf Love', Icons.sentiment_satisfied,
      nonProfitsResourcesList),
];

// resource model
class ResourceModel {
  final int id;
  final String name;
  final String description;
  final String state;

 ResourceModel(this.id, this.name, this.description, this.state);
}

// rerources data
final List<ResourceModel> schoolResourcesList = [
  ResourceModel(1, 'MSD - Frederick',
      'Maryland school for the Deaf located in Frederick', 'MD'),
  ResourceModel(2, 'MSSD', 'Model School for the Deaf', 'DC'),
  ResourceModel(3, 'CSD - Freemont',
      'California School for the Deaf located in Freemont, CA', 'CA'),
  ResourceModel(4, 'CSD - Riverside',
      'California School for the Deaf located in Riveride, CA', 'CA'),
      ResourceModel(5, 'MSD - Ellicott City',
      'Maryland school for the Deaf located in Ellicott City', 'MD'),
];

final List<ResourceModel> vrResourcesList = [];

final List<ResourceModel> nonProfitsResourcesList = [];

// // Local resource model for states list
// class ResourcesPerStateModel {
//   final String state;
//   List<int> resources;

//   ResourcesPerStateModel(this.state, this.resources);
// }



