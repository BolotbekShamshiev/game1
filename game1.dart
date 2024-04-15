import 'dart:io';

void main() {
  binarySearch();
}

void binarySearch() {
  print('Загадайте число от 1 до 100. Но никому не говорите!');
  print('Я буду угадывать, а вы отвечайте "up" "down" или "yes"');
  print('Если вы загадали, то начинаем.');
ga
  int lowerBound = 1;
  int upperBound = 100;
  int attempts = 7;


  while (attempts > 0) {
    int guess = (lowerBound + upperBound) ~/ 2; 

    print('Это число $guess? (Введите "выше", "ниже" или "угадал")');
    String response = stdin.readLineSync()?.toLowerCase() ?? '';

    if (response == 'угадал') {
      print('Ура! Я угадал ваше число!');
      break;
    } else if (response == 'выше') {
      lowerBound = guess + 1;
    } else if (response == 'ниже') {
      upperBound = guess - 1;
    } else {
      print('Некорректный ввод. Пожалуйста, введите "выше", "ниже" или "угадал".');
      continue;
    }

    attempts--;
    print('У вас осталось $attempts попыток.');
  }

  if (attempts == 0) {
    print('К сожалению, я не смог угадать ваше число.');
  }
}

