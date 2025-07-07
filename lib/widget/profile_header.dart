// lib/widgets/profile_header.dart
import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {

  double _avatarSize = 120;

  void _toggleAvatarSize() {
    setState(() {
      _avatarSize = _avatarSize == 120 ? 150 : 120;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          // Cover Image
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          
          // Profile Picture
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: _toggleAvatarSize,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: _avatarSize,
                  height: _avatarSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/profile.jpg'),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
              ),
            ),
          ),
          
          // Name and Title
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Musa Taofik',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Flutter Developer',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
