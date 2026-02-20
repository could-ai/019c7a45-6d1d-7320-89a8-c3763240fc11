import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      'CE',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Chasi Evy',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Flutter Developer & UI/UX Enthusiast',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildContactIcon(Icons.email, 'mailto:chasi@example.com'),
                      const SizedBox(width: 16),
                      _buildContactIcon(Icons.phone, 'tel:+1234567890'),
                      const SizedBox(width: 16),
                      _buildContactIcon(Icons.link, 'https://linkedin.com'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Summary Section
            _buildSectionTitle(context, 'About Me'),
            const Text(
              'Creative and detail-oriented Flutter developer with a passion for building beautiful, responsive, and user-friendly mobile applications. Experienced in state management, API integration, and clean architecture.',
              style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
            ),
            const Divider(height: 48, thickness: 1),

            // Experience Section
            _buildSectionTitle(context, 'Experience'),
            _buildExperienceItem(
              context,
              role: 'Senior Flutter Developer',
              company: 'Tech Innovations Labs',
              period: '2022 - Present',
              description:
                  'Leading the mobile development team to build cross-platform apps. Implemented CI/CD pipelines and optimized app performance by 40%.',
            ),
            _buildExperienceItem(
              context,
              role: 'Mobile App Developer',
              company: 'StartUp Studio',
              period: '2020 - 2022',
              description:
                  'Developed and launched 3 major apps on App Store and Play Store. Collaborated closely with designers to ensure pixel-perfect implementation.',
            ),
            const Divider(height: 48, thickness: 1),

            // Education Section
            _buildSectionTitle(context, 'Education'),
            _buildExperienceItem(
              context,
              role: 'Bachelor of Computer Science',
              company: 'University of Technology',
              period: '2016 - 2020',
              description: 'Specialized in Software Engineering and Human-Computer Interaction.',
            ),
            const Divider(height: 48, thickness: 1),

            // Skills Section
            _buildSectionTitle(context, 'Skills'),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildSkillChip(context, 'Flutter'),
                _buildSkillChip(context, 'Dart'),
                _buildSkillChip(context, 'Firebase'),
                _buildSkillChip(context, 'REST APIs'),
                _buildSkillChip(context, 'Git'),
                _buildSkillChip(context, 'UI/UX'),
                _buildSkillChip(context, 'Supabase'),
                _buildSkillChip(context, 'Agile'),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildContactIcon(IconData icon, String url) {
    return IconButton(
      onPressed: () {
        // Placeholder for action
      },
      icon: Icon(icon),
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.deepPurple,
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }

  Widget _buildExperienceItem({
    required BuildContext context,
    required String role,
    required String company,
    required String period,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  role,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Text(
                period,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            company,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[800],
              height: 1.5,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
