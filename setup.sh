# create flutter app
flutter create flutter
cp Dockerfile.flutter ./flutter/Dockerfile
cp -f main.dart ./flutter/lib/main.dart
cp -f pubspec.yaml ./flutter/pubspec.yaml

# create react app
npx create-react-app react
cp Dockerfile.react_dev ./react_app/Dockerfile
cp -f App.js ./react_app/src/App.js

# compose and run docker containers
docker-compose build; docker-compose up -d

# rewrite .gitignore
".DS_Store" > .gitignore
".dart_tool" >> .gitignore
".gitignore" >> .gitignore
