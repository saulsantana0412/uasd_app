import 'package:flutter/material.dart';
import 'package:uasd_app/components/menu/student_portal_menu.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Materias"),
      ),
      drawer: const StudentPortalMenu(currentScreen: "SubjectsScreen",),
    );
  }
}