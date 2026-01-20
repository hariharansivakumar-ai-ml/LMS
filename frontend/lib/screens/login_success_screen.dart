import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 900;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0F2FE), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            width: isDesktop ? 1280 : size.width * 0.95,
            height: isDesktop ? 720 : size.height * 0.95,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: [
                if (isDesktop)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 40,
                        right: 40,
                        bottom: 60,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF385C8E), Color(0xFF5D84BB)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Soft large "eclipses" (radial gradients)
                          Positioned(
                            top: size.height * 0.1,
                            left: -150,
                            child: Container(
                              width: 440,
                              height: 440,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          // Illustration Background Circle
                          Positioned(
                            top: 140,
                            left: 0,
                            child: Container(
                              width: 580,
                              height: 580,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 230,
                            left: 90,
                            child: Image.asset(
                              'assets/images/illustration.png',
                              width: 400,
                              height: 390,
                              fit: BoxFit.contain,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Logo Section
                              Padding(
                                padding: const EdgeInsets.only(top: 0, left: 0),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  height: 75,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 60),
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.outfit(
                                    fontSize: 34,
                                    height: 1.2,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text:
                                          "Empowering the next generation of\n",
                                      style: TextStyle(fontSize: 28),
                                    ),
                                    TextSpan(
                                      text: "leaders.",
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: const Color(0xFFFFB800),
                                        decoration: TextDecoration.underline,
                                        decorationColor: const Color(
                                          0xFFFFB800,
                                        ).withValues(alpha: 0.5),
                                        decorationThickness: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Access your courses, track your progress, and collaborate\nwith peers in one unified learning environment.",
                                style: GoogleFonts.outfit(
                                  color: Colors.white.withValues(alpha: 0.9),
                                  fontSize: 16,
                                  height: 1.6,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                              Center(
                                child: Container(
                                  child: Text(
                                    "© 2026 KSR College of Engineering. All rights reserved.",
                                    style: GoogleFonts.outfit(
                                      color: Colors.white.withValues(
                                        alpha: 0.6,
                                      ),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 60,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Success Checkmark
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDCFCE7),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              color: Color(0xFF16A34A),
                              size: 50,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          "Login Successful!",
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Redirecting you to your dashboard workspace...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                        const SizedBox(height: 60),

                        // Fake progress bar
                        Container(
                          width: 200,
                          height: 6,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE5E7EB),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 120, // 60% progress
                            height: 6,
                            decoration: BoxDecoration(
                              color: const Color(0xFF16A34A),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
