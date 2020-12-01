// ALTERNATING CHARACTER 

// You are given a string containing characters  and  only. Your task is to change it into a string such that there are no matching adjacent characters. To do this, you are
// allowed to delete zero or more characters in the string.
// Your task is to find the minimum number of required deletions.

// For example, given the string , remove an  at positions  and  to make  in  deletions.
// Function Description

// Complete the alternatingCharacters function in the editor below. It must return an integer representing the minimum number of deletions to make the alternating string.
// alternatingCharacters has the following parameter(s):
// s: a string
// Input Format

// The first line contains an integer , the number of queries.
// The next  lines each contain a string .

// Constraints

// Each string  will consist only of characters  and 
// Output Format

// For each query, print the minimum number of deletions required on a new line.

// Sample Input

// 5
// AAAA
// BBBBB
// ABABABAB
// BABABA
// AAABBB

// Sample Output

// 3
// 4
// 0
// 0
// 4
// Explanation

// The characters marked red are the ones that can be deleted so that the string doesn't have matching consecutive characters.

function alternatingCharacters(s) {
    const stringArray = s.split('');
    let del = 0;
    
    if(s.length == 0 || s.length == 1){
        return del;
    } else {
        for(let i = 0; i<s.length -  1; i++){
            if(stringArray[i] == stringArray[i + 1]){
                del++
            }
        }

    }

    return del;
}

console.log('I am a chosen one ', alternatingCharacters('AABBBA'));