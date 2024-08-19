import '99_imports.dart';

class AiPage extends StatefulWidget {
  const AiPage({super.key, required this.title});
  final String title;

  @override
  State<AiPage> createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
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
                  padding: const EdgeInsets.only(top: 0),
                  child: GridView.count(
                    crossAxisCount: 1,
                    padding: const EdgeInsets.all(90),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 0,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: SizedBox(
                          width: buttonSize + 100,
                          height: buttonSize - 20,
                          child: ElevatedButton(
                            onPressed: () => _navigateToPage(context, const MainPage(title: 'Main')),
                            child: const Text('AI Mains Recommendations'),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: buttonSize + 50,
                          height: buttonSize - 20,
                          child: ElevatedButton(
                            onPressed: () => _navigateToPage(context, const EntreePage(title: 'Entree')),
                            child: const Text('AI Entree Recommendations'),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: buttonSize + 50,
                          height: buttonSize - 20,
                          child: ElevatedButton(
                            onPressed: () => _navigateToPage(context, const DessertPage(title: 'Dessert')),
                            child: const Text('AI Dessert Recommendations'),
                          ),
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