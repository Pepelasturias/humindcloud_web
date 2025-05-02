import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkGray,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 150),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '¿Quiénes somos?',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: 'Quantico'
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Humind Cloud es una empresa enfocada en desarrollar soluciones digitales inteligentes para empresas reales. '
                'Combinamos tecnología, diseño y estrategia para ayudarte a crecer de forma eficiente.',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.white,
              fontFamily: 'Quantico'
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
