import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeaderScreen(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _AccountTile(title: "Profile", icon: Icons.person),
                  _AccountTile(title: "My Pets", icon: Icons.pets),
                  _AccountTile(title: "Wallet", icon: Icons.account_balance_wallet),
                  _AccountTile(title: "My Appointment", icon: Icons.calendar_today),
                  _AccountTile(title: "My Order", icon: Icons.shopping_bag),
                  _AccountTile(title: "Membership", icon: Icons.card_membership),
                  _AccountTile(title: "Add Address", icon: Icons.location_on),
                  _AccountTile(title: "Help & Support", icon: Icons.help_outline),
                  _AccountTile(title: "Terms & Policies", icon: Icons.policy),
                  _AccountTile(title: "Log out", icon: Icons.logout),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const _AccountTile({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}

class ProfileHeaderScreen extends StatelessWidget {
  const ProfileHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Curved orange background
        ClipPath(
          clipper: BottomWaveClipper(),
          child: Container(
            height: 180,
            color: Colors.green
            ,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Edit Icon (Top-right)
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.edit,
                    color: Color(0xFFFF9F00),
                    size: 20,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=3',
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Tanvi Chauhan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
