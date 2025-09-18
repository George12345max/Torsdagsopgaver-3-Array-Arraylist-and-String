// 2.a Lav en metode, printPartOfWord(), med tre parametre

// 2.a metode der printer et udsnit af et ord
void printPartOfWord(String word, int startIndex, int endIndex) {
  // sikrer at argumenterne er gyldige
  if (startIndex < 0 || endIndex > word.length() || startIndex >= endIndex) {
    println("Fejl: Ugyldige indeksværdier.");
  } else {
    String part = word.substring(startIndex, endIndex);
    println("Udsnit: " + part);
  }
}
//2.b Kald metoden fra setup() med passende argumenter og se om den virker.
// 2.b kald metoden fra setup()
void setup() {
  printPartOfWord("København", 0, 3);   // giver "Køb"
  
  // 2.d Find ud af hvordan du skal ændre kaldet for at få de sidste 4 bogstaver i en hvilken som helst string.
  // 2.d de sidste 4 bogstaver
  String by = "København";
  int start = by.length() - 4;
  int slut = by.length();   // substring slut-index er eksklusiv
  printPartOfWord(by, start, slut);     // giver "havn"
  
  //Tjek hvad der sker hvis man kalder metoden med negative værdier. Eller hvor start-index er højere end end slut index. Nu skal du sikre at metoden giver en passende besked, hvis man kommer til at kalde den med sådanne "forkerte" argumenter.
  // 2.e test med forkerte værdier
  printPartOfWord("Test", -1, 2);       // negativ start
  printPartOfWord("Test", 3, 2);        // start > slut
  printPartOfWord("Test", 1, 10);       // slut > længden
}
