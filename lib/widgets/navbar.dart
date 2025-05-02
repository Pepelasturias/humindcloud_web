import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Navbar extends StatelessWidget {
  final Function(String section) onNavItemSelected;

  const Navbar({super.key, required this.onNavItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBlue,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Humind Cloud',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              _buildNavItem('Inicio'),
              const SizedBox(width: 20),
              _buildNavItem('Nosotros'),
              const SizedBox(width: 20),
              _buildNavItem('Servicios'),
              const SizedBox(width: 20),
              _buildNavItem('Paquetes'),
              const SizedBox(width: 20),
              _buildNavItem('Contacto'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return InkWell(
      onTap: () => onNavItemSelected(title),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
