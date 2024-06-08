import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:ps01/widgets/marquee.dart';

import '../shared/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.green.shade800,
        icon: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: AppColors.kWhiteColor,
        ),
        label: const Text(
          'WhatsApp',
          style: TextStyle(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.kBlackColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Deposit sekarang untuk mendapat promo menarik dan bonus lainnya',
              textAlign: TextAlign.center,
              style: GoogleFonts.akatab(
                fontSize: 22,
                color: AppColors.kWhiteColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 160,
            child: InfiniteCarousel.builder(
              itemCount: 8,
              itemExtent: 280,
              velocityFactor: 0.5,
              itemBuilder: (context, itemIndex, realIndex) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/slider2.jpeg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Deposit',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Gap(12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Gap(24),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: MarqueeWidget(
              animationDuration: const Duration(milliseconds: 9000),
              backDuration: const Duration(milliseconds: 9000),
              child: Text(
                'Selamat datang di situs judi online terpercaya di Indonesia dengan berbagai permainan yang menarik dan seru untuk dimainkan bersama teman-teman Anda.',
                style: GoogleFonts.akatab(
                  fontSize: 18,
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const Gap(24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Terpopuler',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.kWhiteColor,
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: InfiniteCarousel.builder(
              itemCount: 12,
              itemExtent: 120,
              loop: false,
              center: false,
              itemBuilder: (context, itemIndex, realIndex) {
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/naga.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
