// The function parts_sums (or its variants in other languages) will take as parameter a list ls and return a list of the sums of its parts as defined above.

// Example
// ls = [1, 2, 3, 4, 5, 6] 
// parts_sums(ls) -> [21, 20, 18, 15, 11, 6, 0]

// ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
// parts_sums(ls) -> [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]

// SOLUTION 
import 'dart:io';

void main() {
  print('I am a chosen one ' + partsSums([1, 2, 3, 4, 5, 6]).toString());
}
 List<int> partsSums(List<int> ls) {
    return List.generate(ls.length, (index) => ls.sublist(0, ls.length - index).reduce((value, element) => value + element ));
}
// Link
// https://www.codewars.com/kata/5ce399e0047a45001c853c2b/train/dart

// List<int> partsSums(List<int> ls) {
//   int len=ls.length;
//   List<int> sumlst=[];
//   if(ls.length==0){
//     sumlst.add(0);
//     }else{
//   int a= ls.reduce((x,y)=>x+y);
//   sumlst.add(a);
//   for(int i=0;i<len;i++){
//     a=a-ls[i];
//     sumlst.add(a);
//   }
//   }
//  return sumlst;
//     // your code
// }