//3.a Declare and initialize a String array which we will use to hold the names of five top rappers (or any musical artists of your liking).
String[] rappers = { 
  "50 cent", 
  "Lil Wayne", 
  "Tupac", 
  "Nas", 
  "Eminem" 
};
// 3.c Declare and initialize another String array which we will use to correspondingly hold the hits of the 5 artists in the former array.
// array med deres hits (samme rækkefølge)
String[] hits = { 
  " In Da Club",
  "Lollipop",
  "Changes",
  "N.Y State of Mind",
  "Lose Yourself"
};
void setup() {
  // 3.b + 3.d print en nummereret liste med rapper + hit
  for (int i = 0; i < rappers.length; i++) {
    println((i+1) + ". " + rappers[i] + " : \"" + hits[i] + "\"");
  }
}
  
