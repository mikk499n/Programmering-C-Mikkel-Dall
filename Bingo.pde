import java.util.Arrays; //<>//

// Array til at lave kolonne
int[] kolonne = new int[3];

// 2D Array som svarer til vores bingo plade. 9 kolonner og 3 rækker
int[][] bingoPlade = new int[9][3];


void setup() {
  size(600, 600);
  textSize(20);
  fill(0);

  for (int i =0; i < bingoPlade.length; i++) {
    kolonne = findTreTal(i);
    while (findEns(kolonne)) {
      kolonne = findTreTal(i);
    }

    kolonne = sorter(kolonne);
    
    bingoPlade[i] = kolonne;

  }

  int[] nuller = new int[4];
  for(int i=0; i<3; i++) {
  nuller = findFireTal(); 
    
    while (findEns(nuller)){
      nuller = findFireTal(); 
      nuller = sorter(nuller);
    }
    for(int j=0; j<nuller.length; j++){
      bingoPlade[nuller[j]][i]=0;
    }
  }


  for (int i=0; i<bingoPlade.length; i++) {
    println("-------");
    printArray(bingoPlade[i]);
  }
  println();
}
void draw() {
  background(225, 225, 225);
  udskriv();
}

int[] findTreTal(int faktor) {
  int[] tal = new int[3];
  for (int i=0; i < 3; i++) {
    tal[i]  = (int)random(1, 11)+faktor*10 ;
  }
  return tal;
}

int[] findFireTal() {
  int[] tal = new int[4];
  for (int i=0; i<tal.length; i++) {
    tal[i]  = (int)random(0, 9);
  }
  return tal;
}

int[] sorter(int[] tal) {
  int i=0;
  while (i<tal.length-1) {
    if (tal[i]>tal[i+1]) {
      int temp = tal[i];
      tal[i]=tal[i+1];
      tal[i+1]=temp;
      i=0;
    } else {
      i++;
    }
  }
  return tal;
}

boolean findEns(int[] tal) {
  boolean notAlike = false;
  // find og ret dubletter
  for (int i =0; i<tal.length; i++) {
    for (int j=i+1; j<tal.length; j++) {
      if (tal[i] == tal[j]) {
        notAlike = true;
      }
    }
  }
  return notAlike;
}

void udskriv() {
  for (int i =0; i<bingoPlade.length; i++) {
    for (int j =0; j<bingoPlade[i].length; j++) {
      text(bingoPlade[i][j], 100+i*40, 100+j*40);
    }
  }
}
