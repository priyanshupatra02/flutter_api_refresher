# Flutter Api Refresher

Powered by [riverpod_simple_architecture](https://github.com/Shreemanarjun/river_bricks/tree/master/bricks/riverpod_simple_architecture) 🚀

## Description

A Flutter 💙 Riverpod-powered app for automated api requests, if you're a victim of server sleepdown during inactivity 🌱.

## Features

- Multiple API calls to different server.
- Riverpod 💙 for state management.
- No 🚫 authentication required.
- Multi-platform support.

## Installation

- Install

```bash
git clone https://github.com/priyanshupatra02/flutter_api_refresher.git
run flutter pub get
```

- Add your .env file

1. Create a `env.dart` file in the lib/env/env.dart
2. Add `.env` file in the root of the project.

```bash
BASE_URL = "<api_base_url>"
```

3. Run 👇🏻 to generate the `env.g.dart` file

```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Make changes in the `lib/features/counter/controller/dio_api_pod.dart` file.

5. Go to main.dart and run the app app.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
