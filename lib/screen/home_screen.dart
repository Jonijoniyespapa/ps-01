import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:ps01/helper/app_helper.dart';
import 'package:ps01/service/api_service.dart';
import 'package:ps01/widgets/card_number.dart';
import 'package:ps01/widgets/marquee.dart';

import '../model/api_model.dart';
import '../shared/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<ApiModel> _fetchData;
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _fetchData = _apiService.fetchApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final ApiModel result = await _fetchData;
          await AppHelper.launch(
            result.whatsappLink,
          );
        },
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
      backgroundColor: AppColors.kBackgroundColor,
      body: FutureBuilder(
        future: _fetchData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: GoogleFonts.akatab(
                  fontSize: 20,
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/newlogo.png',
                    height: 160,
                    width: 160,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Deposit sekarang untuk mendapat promo menarik dan bonus lainnya',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.akatab(
                      fontSize: 20,
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
                                color: AppColors.kWhiteColor),
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
                const CardNumber(
                  tanggal: '29 May 2024',
                  countryCode: 'SGM - 116',
                  number: '6063',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
