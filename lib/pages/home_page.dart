import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/components/header.dart';
import 'package:gojek_clone/datas/icons.dart';
import 'package:gojek_clone/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: green2,
          elevation: 0,
          toolbarHeight: 71,
          title: const Header()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #Search
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: const Color(0xFFE8E8E8))),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            colorFilter:
                                ColorFilter.mode(dark1, BlendMode.srcIn),
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cari layanan, makanan, & tujuan',
                            style: regular14.copyWith(color: dark3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 / 2)),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset('assets/images/Avatar.png'),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35 / 2),
                                  color: const Color(0xFFD1E7EE)),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset(
                                'assets/icons/goclub.svg',
                                colorFilter:
                                    ColorFilter.mode(blue3, BlendMode.srcIn),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),

            // #Gopay
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                    color: blue1, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: const Color(0xFFBBBBBB),
                                borderRadius: BorderRadius.circular(1)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: [
                          Container(
                            height: 11,
                            width: 118,
                            decoration: const BoxDecoration(
                                color: Color(0xFF9CCDDB),
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 68,
                            width: 127,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(8),
                                  top: Radius.circular(8)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/gopay.png',
                                  height: 14,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Rp12.379',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & cek riwayat',
                                  style: semibold12_5.copyWith(color: green1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...gopayIcons.map((icon) => Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: SvgPicture.asset(
                                  'assets/icons/${icon.icon}.svg',
                                  colorFilter:
                                      ColorFilter.mode(blue1, BlendMode.srcIn),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                icon.title,
                                style: semibold14.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),

            // #Menu Icons
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  children: [
                    ...menuIcons.map((icon) => Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: icon.icon == 'goclub'
                                      ? Colors.white
                                      : icon.color,
                                  borderRadius: BorderRadius.circular(20)),
                              child: SvgPicture.asset(
                                'assets/icons/${icon.icon}.svg',
                                // ignore: deprecated_member_use
                                color: icon.icon == 'goclub'
                                    ? icon.color
                                    : icon.icon == 'other'
                                        ? dark2
                                        : Colors.white,
                                width: 24,
                              ),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Text(
                              icon.title,
                              style: regular12_5.copyWith(color: dark2),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
