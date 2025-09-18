// Task 1: Pick a random number from an array
//1.a Add the following array as a global variable: int[] arr = { 28, 230, 9, 310,72}
int[] arr = { 28, 230, 9, 310, 72 };
//1.b. Write a method, getRandom() that returns a random element from the above array.
int getRandom() {
  int index = int(random(arr.length)); // vælger et tilfældigt index
  return arr[index];
}
// 1.c Add a setup method, from where you will call getRandom().
void setup() {
  int r = getRandom();
  println("Tilfældigt tal fra arrayet: " + r);
}
