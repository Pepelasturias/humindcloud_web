import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBlue.withOpacity(0.05),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Servicios',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGray,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '• Desarrollo de páginas web\n'
                '• Apps móviles\n'
                '• Sistemas administrativos\n'
                '• Automatización con inteligencia artificial\n'
                '• Integraciones y soluciones a medida',
            style: TextStyle(fontSize: 18, color: AppColors.darkGray),
          ),
        ],
      ),
    );
  }
}
