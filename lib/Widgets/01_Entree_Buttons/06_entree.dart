import '00_imports.dart';

class Button6_entree extends StatelessWidget {
  const Button6_entree({super.key});

  void _buttonAction() {
    if (kDebugMode) {
      print('Button 6 has been pressed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: _buttonAction,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xBFACE1AF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0, // Remove elevation from ElevatedButton
        ),
        child: const Text('Button 6\nLong Text\nLonger text'),
      ),
    );
  }
}