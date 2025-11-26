class Cart {
 static int count = 0;
 static void add() {
 count++;
}
 static void remove() {
  if (count > 0) count--;
  }
 }