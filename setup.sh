# create flutter app
flutter create flutter_app
cp Dockerfile.flutter ./flutter_app/Dockerfile
cp -f widget_test.dart ./flutter_app/test/widget_test.dart
cp -f main.dart ./flutter_app/lib/main.dart
cp -f pubspec.yaml ./flutter_app/pubspec.yaml

# create react app
npx create-react-app react_app
# TBH, you should probably use a framework.
#  npx create-next-app@latest
cp Dockerfile.react_dev ./react_app/Dockerfile
cp -f App.js ./react_app/src/App.js

# compose and run docker containers
docker-compose build; docker-compose up -d

# rewrite .gitignore
echo ".DS_Store" > .gitignore
