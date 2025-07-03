// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:profile_app/widget/contact_section.dart';
import 'package:profile_app/widget/profile_header.dart';
import 'package:profile_app/widget/project_section.dart';
import 'package:profile_app/widget/section.dart';
import 'package:profile_app/widget/skills.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 20),
            AboutSection(),
            SizedBox(height: 20),
            SkillsSection(),
            SizedBox(height: 20),
            ContactSection(),
            SizedBox(height: 20),
            ProjectsSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
