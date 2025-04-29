import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBlue.withOpacity(0.05),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Contacto',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.darkGray,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '¿Listo para impulsar tu empresa?\nEscríbenos por WhatsApp o correo y conoce todo lo que podemos hacer por ti.',
            style: TextStyle(fontSize: 18, color: AppColors.darkGray),
          ),
          SizedBox(height: 30),
          Text(
            '📞 WhatsApp: +52 33 1234 5678\n✉️ Correo: contacto@humindcloud.com',
            style: TextStyle(fontSize: 16, color: AppColors.darkGray),
          ),
        ],
      ),
    );
  }
}
