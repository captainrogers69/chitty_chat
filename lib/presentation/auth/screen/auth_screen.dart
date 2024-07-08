import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../components/buttons/auth_button.dart';
import '../../../components/common/sizing_box.dart';
import '../../../k_providers.dart';
import '../../../utils/constants/k_assets.dart';
import '../../../utils/constants/k_colors.dart';

final browseCategoriesFutureProvider = FutureProvider<List>((ref) async {
  List response = await ref.read(apiServiceProvider).fetchCategoriesList();
  return response;
});

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              KAssets.logo,
              height: 180.0,
              width: 180.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Jam, request, and \nrock out together!'.toUpperCase(),
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w900,
                  color: KColors.whiteColor,
                  fontSize: 18.0,
                ),
              ),
            ),
            Sbh(h: 25.sp),
            AuthButton(
              onPressed: () {},
              fetching: false,
              backgroundColor: KColors.darkPrimary,
              title: "Sign up for free",
              asset: '',
            ),
            /* AuthButton(
              onPressed: () {},
              fetching: false,
              title: "Continue with phone number",
              asset: KAssets.phone,
            ), */
            AuthButton(
              onPressed: () {
                // ref.read(authProvider).configGoogleLoginProgress(val: false);
              },
              fetching: false, // ref.watch(authProvider).googleLoginInProgress,
              title: "Continue with Google",
              asset: KAssets.google,
            ),
            /* AuthButton(
              onPressed: () {
                // ref.read(authProvider).configSpotifyLoginProgress(val: false);
              },
              fetching: ref.watch(authProvider).spotifyLoginInProgress,
              title: "Continue with Spotify",
              asset: KAssets.spotify,
            ), */
            // AuthButton(
            //   onPressed: () {},
            //   fetching: false,
            //   title: "Log in",
            //   asset: KAssets.logo,
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'By logging in, you agree to Songbird\'s \nTerms of Service and Privacy Policy.',
                style: GoogleFonts.poppins(fontSize: 12.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Sbh(h: 50.sp)
          ],
        ),
      ),
    );
  }
}
