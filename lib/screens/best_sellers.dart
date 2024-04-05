import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_sill_app/screens/details_screen.dart';

import '../widgets/dropdowns.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF6D6661),
          ),
        ),
        title: Text(
          'BEST SELLERS',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF6D6661),
            fontSize: 14,
            fontFamily: 'Monument',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.28,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropDowns(
                          text: 'FEATURES',
                        ),
                        DropDowns(
                          text: 'VARIETY',
                        ),
                        DropDowns(
                          text: 'SIZE',
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 154,
                                height: 224.02,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/parlour_palm.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 115.85,
                                        top: 10.74,
                                        child: SvgPicture.asset(
                                            'assets/images/heart.svg')),
                                  ],
                                ),
                              ),
                              Text(
                                'Parlor \nPalm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF5B5249),
                                  fontSize: 12,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, a, b) =>
                                          DetailsScreen()));
                            },
                            child: Container(
                              width: 154,
                              height: 285.52,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/gift.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 121.86,
                                    top: 251.17,
                                    child: SizedBox(
                                      width: 103.14,
                                      child: Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(-1.57),
                                        child: Text(
                                          'SHOP GIFTS',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Monument',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22.10,
                                    top: 34.63,
                                    child: SizedBox(
                                      width: 109.15,
                                      height: 100.55,
                                      child: Text(
                                        'A Gift \nThey Actually Want',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Monument',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.28,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22.10,
                                    top: 191.66,
                                    child: SvgPicture.asset(
                                        'assets/images/play.svg'),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                  width: 152.73,
                                  height: 159.72,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/laurentil.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              Text(
                                'Large Snake \nLaurentii',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF5B5249),
                                  fontSize: 12,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Container(
                                  width: 152.73,
                                  height: 130.73,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/marble_queen.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              Text(
                                'Marble Queen\n Pothos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF5B5249),
                                  fontSize: 12,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Container(
                                  width: 152.73,
                                  height: 130.73,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/echeveria.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              Text(
                                'Echeveria',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF5B5249),
                                  fontSize: 12,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  width: 292.92,
                  height: 73.52,
                  decoration: ShapeDecoration(
                    color: Color(0xFF6D6661),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 50,
                          top: 25,
                          child: SvgPicture.asset('assets/images/cart.svg')),
                      Positioned(
                        left: 85,
                        top: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'CART',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Monument',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.24,
                              ),
                            ),
                            SizedBox(width: 10),
                            SvgPicture.asset('assets/images/c_line.svg'),
                            SizedBox(width: 10),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Monument',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
