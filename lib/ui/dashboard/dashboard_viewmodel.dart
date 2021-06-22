import 'package:flutter/material.dart';
import 'package:shopping_app/app/app.logger.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final log = getLogger('DashboardViewModel');
  int selectedCategoryIndex = 0;

  Map<String, dynamic> categories = {
    'Groceries': 'Shopping List',
    'Stuff I want': "Test"
  };

  int updateSelectedListIndex(int index) {
    selectedCategoryIndex = index;
    return selectedCategoryIndex;
  }

  Widget buildCategoryCard(int index, String title, String content, int count) {
    return GestureDetector(
      onTap: () {
        selectedCategoryIndex = index;
        notifyListeners();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        height: 240.0,
        width: 175.0,
        decoration: BoxDecoration(
          color: index == selectedCategoryIndex
              ? Color(0xFF417BFB)
              : Color(0xFFF5F7FB),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            selectedCategoryIndex == index
                ? BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 2),
                    blurRadius: 10.0)
                : BoxShadow(color: Colors.transparent)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                title,
                style: TextStyle(
                    color: selectedCategoryIndex == index
                        ? Colors.white
                        : Color(0xFFAFB4C6),
                    // fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                count.toString(),
                style: TextStyle(
                    color: selectedCategoryIndex == index
                        ? Colors.white
                        : Colors.black,
                    fontSize: 30.5,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
