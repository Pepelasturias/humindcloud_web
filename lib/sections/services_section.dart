import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.accentPink,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Servicios',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: 'Quantico',
            ),
          ),
          SizedBox(height: 20),
          Text(
            '• Desarrollo de páginas web\n'
                '• Apps móviles\n'
                '• Sistemas administrativos\n'
                '• Automatización con inteligencia artificial\n'
                '• Integraciones y soluciones a medida',
            style: TextStyle(fontSize: 23, color: AppColors.white, fontFamily: 'Quantico')
          ),
        ],
      ),
    );
  }
}
