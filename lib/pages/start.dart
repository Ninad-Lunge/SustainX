import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  // final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/layer.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    buildTextWithStroke(context, 'Welcome', 80.0),
                    buildText(context, 'Welcome', 80.0, Colors.white),
                    buildTextWithStroke(context, 'To', 145.0),
                    buildText(context, 'To', 145.0, Colors.white),
                    buildTextWithStroke(context, 'SustainX', 210.0),
                    buildText(context, 'SustainX', 210.0, Colors.white),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset(
                      'assets/images/recyclingwork.png',
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Center(
                  child: Text(
                    'Plastics | Paper | Metals | Ewaste',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    size: MediaQuery.of(context).size.width * 0.14,
                    color: Color(0xFF1BE417),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildText(
      BuildContext context, String text, double topPadding, Color textColor) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, topPadding, 0.0, 0.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.1,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }

  Widget buildTextWithStroke(
      BuildContext context, String text, double topPadding) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, topPadding, 0.0, 0.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.1,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
      ),
    );
  }
}
