import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../shared/app_colors.dart';

class CardNumber extends StatelessWidget {
  final String countryCode;
  final String number;
  final String tanggal;
  const CardNumber(
      {super.key,
      required this.tanggal,
      required this.countryCode,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: AppColors.kPrimaryGradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 8,
              top: 8,
              bottom: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/date.png',
                          width: 24,
                          height: 24,
                        ),
                        const Gap(4),
                        Text(
                          // AppHelper.convertDate(tanggal),
                          tanggal,
                          style: const TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 6,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff6B71F3),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Text(
                            countryCode,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w900,
                              color: AppColors.kWhiteColor,
                            ),
                          ),
                          const Gap(24),
                          const Text(
                            'DMY',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.kWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.kButtonColor,
                      child: Text(
                        number[0],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff474A93),
                        ),
                      ),
                    ),
                    const Gap(8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.kButtonColor,
                      child: Text(
                        number[1],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff474A93),
                        ),
                      ),
                    ),
                    const Gap(8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.kButtonColor,
                      child: Text(
                        number[2],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff474A93),
                        ),
                      ),
                    ),
                    const Gap(8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.kButtonColor,
                      child: Text(
                        number[3],
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff474A93),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Color(0xff3E405B),
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/status_list.png',
                          width: 24,
                          height: 24,
                        ),
                        const Gap(4),
                        const Text(
                          'DETAIL',
                          style: TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/history.png',
                          width: 20,
                          height: 20,
                        ),
                        const Gap(4),
                        const Text(
                          'HISTORI',
                          style: TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
