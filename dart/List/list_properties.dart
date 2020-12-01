// 1. ===> first ↔ E Returns the first element. [...]
// 2. =======> hashCode → int The hash code for this object. [...]
// 3. ======> isEmpty → bool Returns true if there are no elements in this collection. [...]
// 4. =========> isNotEmpty → bool Returns true if there is at least one element in this collection. [...]
// 5. ==========> iterator → Iterator<E> Returns a new Iterator that allows iterating the elements of this Iterable. [...]
// 6. =====> last ↔ E Returns the last element. [...]
// 7. length ↔ int The number of objects in this list. [...]
// 8. ===> reversed → Iterable<E> Returns an Iterable of the objects in this list in reverse order.
// 9. ===> runtimeType → Type A representation of the runtime type of the object.
// 10. ====> single → E Checks that this iterable has only one element, and returns that element. [...]

List<int> myList = [5];

final man = myList.single;

void main() {
print('I am a chosen one $man');

}