# create flutter app
flutter create flutter_app
mv Dockerfile.flutter ./flutter_app/Dockerfile
mv -f widget_test.dart ./flutter_app/test/widget_test.dart
mv -f main.dart ./flutter_app/lib/main.dart
mv -f pubspec.yaml ./flutter_app/pubspec.yaml

# create react app
npx create-react-app react_app
# TBH, using a framework around react would be better.
#  npx create-next-app@latest
cp Dockerfile.react_dev ./react_app/Dockerfile
mv Dockerfile.react_dev ./react_app/Dockerfile.react_dev
mv Dockerfile.react_prod ./react_app/Dockerfile.react_prod
mv -f App.js ./react_app/src/App.js

# compose and run docker containers
docker-compose build; docker-compose -p web_app up -d
