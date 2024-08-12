import '99_imports.dart';

class AiPage extends StatefulWidget {
  const AiPage({super.key, required this.title});
  final String title;

  @override
  State<AiPage> createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToTestPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainPage(title: 'egg')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFcdf0e4), Color(0xFFE0FBE2)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double buttonSize = (constraints.maxWidth / 2) - 20;

                return Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(30),
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: SizedBox(
                          width: buttonSize + 50,
                          height: buttonSize - 20,
                          child: const Button1(),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: buttonSize + 10,
                          height: buttonSize - 20,
                          child: const Button2(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFcdf0e4),
    );
  }
}