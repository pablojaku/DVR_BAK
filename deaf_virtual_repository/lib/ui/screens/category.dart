import 'package:flutter/material.dart';
import 'package:deaf_virtual_repository/global.dart';

// category classes
class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // import category selection from home screen
    final CategoryModel category = ModalRoute.of(context).settings.arguments;

    // import resourcelist
    final List localRourcesList = category.resourcesList;

    // initiate state set
    Set<String> statesInSet = new Set();

    // build states set
    for (var resource in localRourcesList) {
      statesInSet.add(resource.state);
    }
    // convert states set to list for listview builder
    List<String> statesInList = statesInSet.toList();

    // resources list builder
    // build the states and insed the state get the resources in that state
    Widget _buildStatesScrollView() {
      Widget _buildStateColumn(currentState) {
        // there will be one column per state with n row (1 row per resource)
        print(currentState);

        // get all the resources that belong to the current state
        Set<ResourceModel> resourcesPerState = new Set();
        for (var resource in localRourcesList) {
          if (resource.state == currentState) {
            resourcesPerState.add(resource);
          }
        }

        Widget resourcesRow;
        // conver resources set to list for working
        List<ResourceModel> resourcesList = resourcesPerState.toList();

        if (resourcesList.length > 0) {
          resourcesRow = Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: (Column(
                  children: List.generate(resourcesList.length, (index) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resourcesList[index].name),
                      Text(resourcesList[index].description),
                    ]);
              }))));
        }

        return resourcesRow;
      }

      return ListView.builder(
          itemCount: statesInList.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Text(statesInList[index]),
                    _buildStateColumn(statesInList[index]),
                  ],
                ));
          });
    }

    // final retur of built screen
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: _buildStatesScrollView(),
    );
  }
}
