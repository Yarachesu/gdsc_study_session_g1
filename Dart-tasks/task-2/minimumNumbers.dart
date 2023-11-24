import 'dart:io';

void main() {
  print("the minimum number is : ");
  minimum();
}

void minimum() {
/*


pesudocode
1.Read the numbers in the list
2.take the first index element as minimum
3.then by using for loop it reapet as the length of list
4.next using if .. elase we check if the first index is less than the next index then print minimum number
5.take minimum and finally print the minimum numbers

*/

  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91];
  int minim = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < minim) {
      minim = numbers[i];
    }
  }

  print(minim);
}
