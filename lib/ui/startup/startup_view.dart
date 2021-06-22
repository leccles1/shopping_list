import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartUpView extends StatelessWidget {
  const StartUpView() : super();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      onModelReady: (model) =>
          SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        model.initialise();
      }),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text("Loading app..."),
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
