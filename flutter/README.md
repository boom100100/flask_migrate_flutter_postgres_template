# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Run

docker build -t flutter-web-app .
docker run -d -p 8080:80 flutter-web-app
<!-- Must also stop the container when done or flutter artifacts will remain in application storage cache storage flutter-app-manifest and flutter-app-cache. -->

Visit http://localhost:8080/