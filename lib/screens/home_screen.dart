// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/sill.svg'),
                    SvgPicture.asset('assets/images/union.svg'),
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SizedBox(
                      width: 165,
                      height: 50,
                      child: Text(
                        'Faux Calathea Orbifolia',
                        textAlign: TextAlign.center,
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
                ),
                // Container(
                //   margin: EdgeInsets.only(top: size.height * 0.68),
                //   child: SizedBox(
                //     width: 142.72,
                //     height: 12,
                //     child: Transform(
                //       transform: Matrix4.identity()
                //         ..translate(0.0, 0.0)
                //         ..rotateZ(-1.57),
                //       child: Text(
                //         'PLANTER STYLE',
                //         textAlign: TextAlign.right,
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 11,
                //           fontFamily: 'Monument',
                //           fontWeight: FontWeight.w400,
                //           letterSpacing: 0.22,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Spacer(),
                Center(
                  child: Text(
                    '\$250 – ADD TO CART',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFC9B79B),
                      fontSize: 11,
                      fontFamily: 'Monument',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.22,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
