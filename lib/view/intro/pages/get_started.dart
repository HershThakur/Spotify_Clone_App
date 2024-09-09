import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/theme/app_colors.dart';

import '../../../core/config/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.srgbToLinearGamma(),
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.introBG,
                ),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo,
                      width: 200,
                    ),
                  ),
                  Spacer(),
                  const Text(
                    'Enjoy Listening To usic',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const Text(
                    'lorem a;lksdjfla;kjsd;fakjsd;fakjsd;fkajs;dlfkja;sdkfja;sldkfja;lskdjf;alksdjf;alksdjjf;aksdjjf;laksjdf;lakjsdf;llakjsdf;laksjdf;lkajsd;lkfj',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BasicAppButton(
                    onPressed: () {},
                    title: "Get Started",
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
    );
  }
}
