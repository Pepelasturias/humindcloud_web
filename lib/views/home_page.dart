import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../sections/about_section.dart';
import '../sections/services_section.dart';
import '../sections/packages_section.dart';
import '../sections/contact_section.dart';
import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  final aboutKey = GlobalKey();
  final servicesKey = GlobalKey();
  final packagesKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(
            onNavItemSelected: (section) {
              switch (section) {
                case 'Nosotros':
                  scrollTo(aboutKey);
                  break;
                case 'Servicios':
                  scrollTo(servicesKey);
                  break;
                case 'Paquetes':
                  scrollTo(packagesKey);
                  break;
                case 'Contacto':
                  scrollTo(contactKey);
                  break;
                default:
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
              }
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 200),
                    color: AppColors.primaryBlue,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/logo-provisional.jpeg', height: 170, fit: BoxFit.contain),
                        const SizedBox(height: 20), 
                        const Text(
                          'Bienvenido a Humind Cloud',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontFamily: 'Quantico',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SectionWrapper(key: aboutKey, child: const AboutSection()),
                  SectionWrapper(
                    key: servicesKey,
                    child: const ServicesSection(),
                  ),
                  SectionWrapper(
                    key: packagesKey,
                    child: const PackagesSection(),
                  ),
                  SectionWrapper(
                    key: contactKey,
                    child: const ContactSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionWrapper extends StatelessWidget {
  final Widget child;
  const SectionWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(key: key, child: child);
  }
}
