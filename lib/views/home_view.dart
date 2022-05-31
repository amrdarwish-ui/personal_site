import 'package:dims_config/dims_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:personal_site/views/home_mobile.dart';
import 'package:personal_site/views/home_pc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiDevice(mobile: HomeMobile(), computer: HomePc());
  }
}
