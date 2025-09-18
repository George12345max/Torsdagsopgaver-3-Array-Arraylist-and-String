//task 7 ArrayList

// 7.a .a Create three ArrayLists that can hold the following types and assign at least 3 different values to each of them:
ArrayList<Integer> intList = new ArrayList<Integer>();
ArrayList<String> stringList = new ArrayList<String>();
ArrayList<Boolean> boolList = new ArrayList<Boolean>();
// ArrayList<Integer> → kan holde tal (f.eks. 10, 25, 40).
// ArrayList<String> → kan holde tekst (f.eks. "Processing")
// ArrayList<Boolean> → kan holde sand/falsk værdier (true eller false).
//Vi tilføjer værdier med .add():
void setup() {
  // Add values to intList
  intList.add(10);
  intList.add(25);
  intList.add(40);

  // Add values to stringList
  stringList.add("Processing");
  stringList.add("is");
  stringList.add("fun");

  // Add values to boolList
  boolList.add(true);
  boolList.add(false);
  boolList.add(true);
  
  // 7.b Print all strings
  
  println("String list:");
  printList(stringList);

  // 7.c Sum of integers
  int sum = sumList(intList);
  println("Sum of integers: " + sum);

  // 7.d Average of integers
  float avg = averageList(intList);
  println("Average of integers: " + avg);
}

// 7.b Method to print each String in ArrayList
//Metoden skal tage en ArrayList<String> og printe alle elementer.
  //listToPrint.size() → fortæller hvor mange elementer listen har.
  //listToPrint.get(i) → henter element nr. i.
  // for-løkken går igennem hele listen, ét element ad gangen, og printer det.
void printList(ArrayList<String> listToPrint) {
  for (int i = 0; i < listToPrint.size(); i++) {
    println(listToPrint.get(i));
  }
}

// 7.c Method to return sum of integers
// Vi starter med total = 0.
//Hver gang vi kører gennem løkken, lægger vi næste tal til total.
//Til sidst returnerer vi summen.
int sumList(ArrayList<Integer> listToSum) {
  int total = 0;
  for (int i = 0; i < listToSum.size(); i++) {
    total += listToSum.get(i);
  }
  return total;
}

// 7.d Method to return average of integers
//sumList(listToAverage) giver summen (f.eks. 75).
//listToAverage.size() giver antal elementer (f.eks. 3).
//(float) bruges for at få et decimaltal (ellers bliver det heltalsdivision).
float averageList(ArrayList<Integer> listToAverage) {
  int total = sumList(listToAverage);
  return (float) total / listToAverage.size();
}
