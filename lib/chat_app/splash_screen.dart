import 'dart:async';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../utils/constants/k_assets.dart';
import '../utils/constants/k_routes.dart';

class SplashScreen extends StatefulHookConsumerWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  double _opacity = 0;
  bool _value = true;
  @override
  void initState() {
    super.initState();
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            Timer(
              const Duration(milliseconds: 300),
              () {
                scaleController.reset();
              },
            );
            context.go(KRoutes.authScreen);
          }
        },
      );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(const Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () async {
        String storageLocation =
            (await getApplicationDocumentsDirectory()).path;
        await FastCachedImageConfig.init(
          clearCacheAfter: const Duration(days: 5),
          subDir: storageLocation,
        );
      });
      return null;
    }, []);
    return Scaffold(
      body: Stack(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Padding(
              //   padding: EdgeInsets.only(top: 80),
              //   child: Text(
              //     'Here will be your app\'s logo',
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.w600,
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(seconds: 6),
              opacity: _opacity,
              child: AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 2),
                height: _value ? 50 : 200,
                width: _value ? 50 : 200,
                // decoration: BoxDecoration(
                //   boxShadow: [
                //     BoxShadow(
                //       color: KColors.primaryColor.withOpacity(.2),
                //       blurRadius: 100,
                //       spreadRadius: 10,
                //     ),
                //   ],
                //   // color: KColors.primaryColor,
                //   borderRadius: BorderRadius.circular(20),
                // ),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          KAssets.logo,
                        ),
                      ),
                    ),
                    child: AnimatedBuilder(
                      animation: scaleAnimation,
                      builder: (c, child) => Transform.scale(
                        scale: scaleAnimation.value,
                        child: Image.asset(
                          KAssets.logo,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
