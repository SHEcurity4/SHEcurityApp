import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onSOSPressed(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('🚨 SOS Alert Sent!'),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> features = [
      {'title': 'Emergency Contacts', 'icon': Icons.phone, 'color': Colors.redAccent},
      {'title': 'Complaints', 'icon': Icons.report, 'color': Colors.orange},
      {'title': 'Feedback', 'icon': Icons.feedback, 'color': Colors.green},
      {'title': 'Appointment', 'icon': Icons.calendar_today, 'color': Colors.blue},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: features.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final feature = features[index];
            return GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${feature['title']} clicked!')),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: feature['color'].withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: feature['color'], width: 1.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(feature['icon'], color: feature['color'], size: 50),
                    const SizedBox(height: 10),
                    Text(
                      feature['title'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: feature['color'].shade700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _onSOSPressed(context),
        label: const Text('SOS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        icon: const Icon(Icons.warning, size: 28),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        extendedPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}