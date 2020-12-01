// some new cashiers started to work at your restaurant. They are good at taking orders, but they don't know how to capitalize words or use spacebar
// All the orders they create look something like this; "milkshakessugafriesepizzachickenbuggerpizzasandwich". The kitchen staffs are threathinng to leave because of the difficulty involve in reading 
// the order. Their preference is to get orders as nice clean string with spaces and capital letter like so "Burgger Fries Chicken Sandwich Coke" . The Kichen staff expect the items to be in thesame
// order as ther appear in the menu. The menu items are fairly simply, there is no overlapp in the names of the items

// 1. Burger
// 2. Fries
// 3. Chicken
// 4. Sandwich
// 5. Coke
// 6. Pizza
// 7. Onionsring
// 8. Milkshakes

// SOLUTION 
String getOrder(String input) {
  List<String> menu = ["Burger","Fries","Chicken","Pizza","Sandwich",
                       "Onionrings","Milkshake","Coke"];
  List<String> ret = [];
  for(String item in menu){
    RegExp regExp = RegExp(item.toLowerCase());
    Iterable results = regExp.allMatches(input);
    for(var _ in results){
      ret.add(item);
    } 
  }
  return ret.join(" ");
}