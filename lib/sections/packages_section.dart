import 'package:flutter/material.dart';
import '../utils/constants.dart';

class PackagesSection extends StatelessWidget {
  const PackagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Nuestros Paquetes',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGray,
              fontFamily: 'Quantico',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Ofrecemos tres planes adaptados a las necesidades de cada empresa:\n\n'
                '• Básico: Ideal para comenzar tu presencia digital.\n'
                '• Profesional: Funcionalidades avanzadas con diseño personalizado.\n'
                '• Premium: Soluciones integrales con automatización e inteligencia artificial.',
            style: TextStyle(fontSize: 23, color: AppColors.darkGray, fontFamily: 'Quantico'),
          ),
        ],
      ),
    );
  }
}
