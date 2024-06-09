import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// Assuming you have a LandingPageModel class defined elsewhere

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: GradientText(
                'Walkie Talk',
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                  fontSize: 45,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Assuming gradient colors as text colors
                ),
                colors: const [
                  Colors.blue, // Assuming primary color
                  Colors.purple, // Assuming secondary color
                  Colors.deepPurpleAccent, // Assuming third color
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -0.2),
              child: SizedBox(
                height: 100,
                width: 100,
                child: FaIcon(
                  FontAwesomeIcons.battleNet,
                  color: Colors.redAccent, // Assuming icon color
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return materialApp;
  }
}
