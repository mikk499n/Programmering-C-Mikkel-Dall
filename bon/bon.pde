int belobUdenMoms = 100; //Beløbet uden moms
float belobMedMoms = 0; //Beløbet med moms
String navn = "Jens"; //Navnet på kunden

void setup(){ //Laver et setup som sørger for programmet ikke looper
  noLoop();
}


void draw(){ //Laver funktionen som beregner total prisen, samt skriver dato mm. på bonnen.
  float belobMedMoms = beregnMoms(belobUdenMoms);
  println (belobMedMoms);
  print (day(),"/",month(),year(), hour(),":",minute());
  
}


float beregnMoms(int belob){ //Denne funktion beregner momsen
  return belob*1.25;
}
