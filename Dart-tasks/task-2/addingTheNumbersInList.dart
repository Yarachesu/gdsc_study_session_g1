import 'dart:io';

void main() {
  print("the sum of the number is : ");
  sum();
}

void sum() {
/*


pesudocode
1.Read the numbers in the list
2.take the sum = 0
3.then by using for loop it reapet as the length of list
4.next by recursively adding the numbers in list to the previous numbers
5.take sum and finally print the sum

*/

  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  print(sum);
}
