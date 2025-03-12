@echo "Clean existing repository"
flutter clean

@echo "Getting packages..."
flutter pub get

@echo "Generating the web folder..."
flutter create . --platform web

@echo "Building for web..."
flutter build web --base-href /flupage/ --release