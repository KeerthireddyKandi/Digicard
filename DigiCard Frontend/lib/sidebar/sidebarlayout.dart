import '../bloc_navigation/navigation_bloc.dart';
import 'package:digi_card/sidebar/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationState) {
              return navigationState as Widget;
            }),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
