import 'dart:io';

void main() {
  print("the maximum number is : ");
  maximum();
}

void maximum() {
/*


pesudocode
1.Read the numbers in the list
2.take the first index element as maximum
3.then by using for loop it reapet as the length of list
4.next using if .. elase we check if the first index is greater than the next index
5.take maximum and finally print the maximum numbers

*/

  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91];
  int maxim = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > maxim) {
      maxim = numbers[i];
    }
  }

  print(maxim);
}
