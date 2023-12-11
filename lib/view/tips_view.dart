import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          OnboardingPageModel(
            title: 'Start Familiar.',
            description: 'Where to start? Begin your pairing adventure with flavors you already enjoy. Familiar tastes can provide a comfortable base for exploring new and complementary pairings.',
            imageUrl: 'assets/images/start.png',
            bgColor: Colors.indigo,
          ),
          OnboardingPageModel(
            title: 'Don\'t limit yourself.',
            description: 'Embrace the diverse, the exotic, and the unexpected. Every new dish is an adventure, and every global cuisine, a new chapter in your culinary exploration.',
            imageUrl: 'assets/images/lightbulb.png',
            bgColor: const Color(0xff1eb090),
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Enjoy what is meant to be enjoyed together. Swap recommendations, plan your next dinner party, or just chat about your latest culinary discoveries.',
            imageUrl: 'assets/images/friends-toasting.png',
            bgColor: const Color(0xFF8B43BC),
          ),
          OnboardingPageModel(
            title: 'Savor the Journey, Responsibly.',
            description: 'True enjoyment comes from savoring each pairing thoughtfully. Remember, the best indulgences are those enjoyed responsibly.',
            imageUrl: 'assets/images/raise_glass.png',
            bgColor: const Color(0xFF160A1D),
          ),
        ],
        onSkip: () => Navigator.pop(context),
        onFinish: () => Navigator.pop(context),
      ),
    );
  }
}


class OnboardingPagePresenter extends StatefulWidget {
  final List<OnboardingPageModel> pages;
  final VoidCallback? onSkip;
  final VoidCallback? onFinish;


  const OnboardingPagePresenter({Key? key, required this.pages, this.onSkip, this.onFinish}) : super(key: key);


  @override
  State<OnboardingPagePresenter> createState() => _OnboardingPageState();
}


class _OnboardingPageState extends State<OnboardingPagePresenter> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        color: widget.pages[_currentPage].bgColor,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.pages.length,
                  onPageChanged: (idx) {
                    setState(() {
                      _currentPage = idx;
                    });
                  },
                  itemBuilder: (context, idx) {
                    final item = widget.pages[idx];
                    return Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Image.network(
                              item.imageUrl,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: item.textColor,
                                    fontFamily: 'ArchivoBlack',
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Container(
                                constraints: const BoxConstraints(maxWidth: 280),
                                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                                child: Text(
                                  item.description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: item.textColor,
                                    fontFamily: 'ArchivoBlack',
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.pages
                    .map(
                      (item) => AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: _currentPage == widget.pages.indexOf(item) ? 30 : 8,
                    height: 8,
                    margin: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
                    .toList(),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.comfortable,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ArchivoBlack', // Set font family here
                        ),
                      ),
                      onPressed: widget.onSkip,
                      child: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.comfortable,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ArchivoBlack', // Set font family here
                        ),
                      ),
                      onPressed: () {
                        if (_currentPage == widget.pages.length - 1) {
                          widget.onFinish?.call();
                        } else {
                          _pageController.animateToPage(
                            _currentPage + 1,
                            curve: Curves.easeInOutCubic,
                            duration: const Duration(milliseconds: 250),
                          );
                        }
                      },
                      child: Row(
                        children: [
                          Text(
                            _currentPage == widget.pages.length - 1 ? "Finish" : "Next",
                            style: const TextStyle(
                              fontFamily: 'ArchivoBlack', // Set font family here
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            _currentPage == widget.pages.length - 1 ? Icons.done : Icons.arrow_forward,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class OnboardingPageModel {
  final String title;
  final String description;
  final String imageUrl;
  final Color bgColor;
  final Color textColor;


  OnboardingPageModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    this.bgColor = Colors.blue,
    this.textColor = Colors.white,
  });
}
