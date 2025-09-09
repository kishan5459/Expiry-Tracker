import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';
import 'package:expiry_tracker/utils/colors.dart';
import 'package:expiry_tracker/utils/custom_text_style.dart';

class MyDialogs {
  static Future<void> shareApp(BuildContext context) async {
    final mqData = MediaQuery.of(context).size;

    try {
      final result = await SharePlus.instance.share(
        ShareParams(
          text:
              'Avoid waste and save time with Smart Expiry Tracker! Easily manage expiry dates for groceries, medicines, and other items. Download now',
          subject: 'Smart Expiry Tracker',
        ),
      );
      if (result.status == ShareResultStatus.success) {
        /// Show impressive thank you animation
        await showDialog(
          context: context,
          barrierColor: Colors.black26,
          builder:
              (context) => Center(
                child: Material(
                  color: AppColors.secondary,
                  child: Container(
                    width: mqData.width * 0.85,
                    constraints: BoxConstraints(maxHeight: mqData.height * 0.8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Lottie.asset(
                              "assets/lottie/thank you.json",
                              height: mqData.width * 0.6,
                              fit: BoxFit.fill,
                              repeat: true,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "Thank You for Sharing!",
                              style: myTextStyle18(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "Your support helps us grow and improve the app for everyone!",
                                textAlign: TextAlign.center,
                                style: myTextStyle15(),
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 12,
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                "Continue",
                                style: myTextStyle18(
                                  fontWeight: FontWeight.bold,
                                  fontColor: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        );
      }
    } catch (e) {
      debugPrint('Sharing failed: $e');
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Failed to share")));
    }
  }
}
