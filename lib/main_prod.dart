import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routes/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencyInjection();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
