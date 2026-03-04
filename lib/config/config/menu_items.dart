import 'Package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const menuItems = <MenuItems>[
  MenuItems(
    title: 'Home',
    subtitle: 'Go to home screen',
    link: '/home',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Profile',
    subtitle: 'View your profile',
    link: '/profile',
    icon: Icons.credit_card_outlined,
  ),
];
