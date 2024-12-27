# Quiz App

This is a simple quiz application built using Flutter. The quiz questions also consists of basic flutter related questions.<br>
Once a user has completed the quiz, scores alongwith user's answers and correct answers are shown on the results screen.



## Getting Started

To get started with this project, you need to have Flutter installed on your machine. Follow the instructions on the [official Flutter website](https://flutter.dev/docs/get-started/install) to set up Flutter.

### Running the App

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/quiz_app.git
    cd quiz_app
    ```

2. Install the dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

## Project Overview

### Main Files

- [main.dart](http://_vscodecontentref_/11): The entry point of the application.
- [quiz.dart](http://_vscodecontentref_/12): The main widget that manages the different screens of the quiz.
- [start_screen.dart](http://_vscodecontentref_/13): The initial screen that prompts the user to start the quiz.
- [questions_screen.dart](http://_vscodecontentref_/14): The screen that displays the quiz questions.
- [results_screen.dart](http://_vscodecontentref_/15): The screen that shows the quiz results.

### Data and Models

- [quest.dart](http://_vscodecontentref_/16): Contains the list of quiz questions.
- [questions.dart](http://_vscodecontentref_/17): Defines the `QuizQuestion` model.

### Question Summary

- [question_number.dart](http://_vscodecontentref_/18): Displays the question number and whether the answer was correct.
- [questions_summary.dart](http://_vscodecontentref_/19): Displays a summary of all the questions and answers.
- [summary_item.dart](http://_vscodecontentref_/20): Displays a single question and its details.

### Answer Button

- `answer_button.dart`: A custom button widget for selecting answers.

## Notes

- This project contains commented-out code that I wrote for my understanding while learning Flutter. These comments are left intentionally to show my thought process and learning journey.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
