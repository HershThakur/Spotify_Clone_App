import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: Text("You made it"),
    );
  }
}
