import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({
    super.key,
  });

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138.68,
      height: 53.34,
      decoration: ShapeDecoration(
        color: Color(0xB25B5550),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF88837E)),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          children: [
            InkWell(
              onTap: _decrementCounter,
              child: Text(
                '-',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFD2BEA5),
                  fontSize: 15,
                  fontFamily: 'Monument',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            ),
            SizedBox(
              width: 55,
              child: Center(
                child: AnimatedOpacity(
                  opacity: _counter != 0 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    '$_counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Monument',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: _incrementCounter,
              child: Text(
                '+',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFD2BEA5),
                  fontSize: 15,
                  fontFamily: 'Monument',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
