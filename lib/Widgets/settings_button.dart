import 'package:flutter/material.dart';
import '../Screens/09_settings.dart';

class Settings_Button extends StatelessWidget {
  const Settings_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings_outlined),
      onPressed: () {
        showGeneralDialog(
          context: context,
          barrierDismissible: true,
          barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
          barrierColor: Colors.transparent, // Set to transparent to prevent darkening
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (context, animation, secondaryAnimation) {
            return const SettingsPage();
          },
          transitionBuilder: (context, animation, secondaryAnimation, child) {
            final slideAnimation = Tween<Offset>(
              begin: const Offset(0.40, -0.45),
              end: Offset.zero,
            ).animate(animation);

            final scaleAnimation = Tween<double>(
              begin: 0.1,
              end: 1.0,
            ).animate(animation);

            return SlideTransition(
              position: slideAnimation,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: child,
              ),
            );
          },
        );
      },
    );
  }
}