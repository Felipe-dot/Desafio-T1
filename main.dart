import 'dart:io';

int sum_divisible_3_or_5(int number) {
  int result = 0;

  for (int i = 0; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      result += i;
    }
  }
  return result;
}

main() {
  while (true) {
    stdout.write("Digite um valor: ");
    String? input = stdin.readLineSync();
    try {
      var value = int.parse(input!);
      stdout.write(
        'O somatório dos números inteiros divísiveis por 3 ou 5 até o número ${value} é ${sum_divisible_3_or_5(value)} \n',
      );
      break;
    } catch (e) {
      print("Entrada inválida. Certifique-se de digitar um número inteiro.");
    }
  }
}
