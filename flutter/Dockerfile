#source: https://www.yourteaminindia.com/tech-insights/flutter-docker-guide
# Use the official Dart image as a base
FROM dart:stable AS build

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH="/flutter/bin:/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Set the working directory
WORKDIR /app

# Copy pubspec files and get dependencies
COPY pubspec.* ./
RUN flutter pub get

# Copy the rest of the application files
COPY . .

ARG BACKEND_URI

# Build the Flutter app
RUN flutter build web --dart-define=BACKEND_URI=${BACKEND_URI}

# ENTRYPOINT flutter run lib/main.dart
# ENTRYPOINT flutter run -d chrome --web-port=3000

# # Use a minimal web server image to serve the built app
FROM nginx:alpine

# Copy the built app from the previous stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run the web server
ENTRYPOINT ["nginx", "-g", "daemon off;"]