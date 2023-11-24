import 'dart:io';

void main() {
  print("the sum of the number is : ");
  sum();
}

void sum() {
/*


pesudocode
1.Read the numbers in the list
2.take the  sum as 0
3.then by using for loop it reapet as the length of list
4.next add the numbers recursively 
5.take sum and finally print the sum/length of list /average numbers

*/

  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  print(sum / numbers.length);
}
