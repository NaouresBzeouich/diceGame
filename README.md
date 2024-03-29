# Dicee Flutter App README

This Flutter mini-project is a simple dice game app where you can interact with two dice. Clicking on the left die will randomly roll both dice, while clicking on the right die will increment the number on one of the dice.

### Getting Started

1. Ensure you have Flutter and Dart installed on your machine. If not, follow the instructions on the [official Flutter website](https://flutter.dev/docs/get-started/install).

2. Clone this repository to your local machine.

    ```bash
    git clone https://github.com/your-username/your-repo.git
    ```

3. Navigate to the project directory.

    ```bash
    cd your-repo
    ```

4. Run the app.

    ```bash
    flutter run
    ```

### Project Structure

- **lib/main.dart**: The main entry point for the Flutter app.
- **assets/dice1.png** and **assets/dice2.png**: Images of dice faces used in the app.

### Features

- Two dice that can be interacted with.
- Randomly roll both dice by clicking on the left die.
- Increment the number on one of the dice by clicking on the right die.

### How to Play

1. Open the app, and you will see a brief explanation of the game rules.
2. Click on the left die to roll both dice randomly.
3. Click on the right die to increment the number on one of the dice.

### Customization

- The app uses a dark theme with a red accent color. You can customize the theme by modifying the `colorScheme` and `scaffoldBackgroundColor` in the `MyApp` class in `lib/main.dart`.

### Development Notes

- The app uses Flutter's stateful widget to manage the dice states.
- Dice images are randomly selected for the initial state and can be incremented by clicking on the right die.

### Dependencies

- [flutter/material.dart](https://api.flutter.dev/flutter/material/material-library.html)

### Contributing

If you find any issues or have suggestions for improvement, feel free to open an issue or create a pull request. Contributions are welcome!

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
