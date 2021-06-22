import 'package:flutter/material.dart';
import 'package:shopping_app/app/app.logger.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StatelessWidget {
  final log = getLogger('DashboardView');

  DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Lewis Eccles',
                    style:
                        TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: model.categories.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return SizedBox(width: 20.0);
                  }
                  return model.buildCategoryCard(
                      index - 1,
                      model.categories.keys.toList()[index - 1], // title
                      model.categories.values.toList()[index - 1], // content
                      42);
                },
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => DashboardViewModel(),
    );
  }
}
