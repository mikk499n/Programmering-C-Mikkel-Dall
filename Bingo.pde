//Array til at lave bingopladen
int[] kolonne = new int

//2d array
int[][] bingoPlade = new int[9][3]


void setup(){
  size(600,600);
  textsize(20);
  fill(0);
//Funktionen findTreTal

for(int i =0; i<bingoPlade.length; i++){
  //start med at finde tre tal
  kolonne = findTreTal(i);
  while(findTreTal(kolonne)){
    kolonne(findTreTal(i));
}

//Sorterere kolonnerne
  kolonne = sorter(kolonne);
  
  
  bingoplade[i] = kolonne;


int[] findTreTal(int faktor){
  int[] tal = new int[3]
  
  
  
int[] sorter(int[]tal){
  int i=0;
  //for int
  while(i<2){
    if(tal[i]>tal[i+1]){
      int temp = tal[i]
      

boolean findEns(int[]tal){
  boolean notAlike=false;
  //find og ret dubletter
  for(int i =0; i<tal.length; i++){
    for (int j=i+l; j<tal.length; j++){
      text(bingoPlade[i][j],100+i*40,100+j*40);
