void setup(){//Laver et setup til størrelsen
  size(400,600);
}

//Påbegynder draw
void draw(){
  background(255,255,255);
  noLoop();
  fill(0,0,0);
  
  //Her begynder jeg med butikken
  textSize(30);
  text("Rema 1000",125,50);
  textSize(12);
  text("Rugkobbel, Farversmøllevej 2",125,75);
  print (day(),"/",month(),year(),hour(),":",minute());//Er ikke helt sikker på hvordan jeg sætter dato ordentlig op
  
//Her sætter jeg op så man kan se kundens navn
  text("Kunde:",20,540);
  text("Mikkel Dall",75,540);
  
  //Sætter "Antal" Rækken op
  text("Antal :",25,135);
  text("Antal :",25,160);
  
  int AntalChips = 5;
  int AntalÆg = 3;
  int PrisChips = 15;
  int PrisÆg = 12;
  
  text(AntalChips,75,135);
  text(AntalÆg,75,160);
  
  text("Varenavn:",190,135);
  text("Varenavn:",190,160);

  text("Chips",245,135);
  text("Æg",245,160);
   
   //Måske skriv du begynder at regne beløbet
   
  text("Beløb:",300,160);
  int Pris2 = AntalÆg * PrisÆg;
  text(Pris2+"DKK",350,160);
  
  text("Beløb:",300,135);
  int Pris1 = AntalChips * PrisChips;
  text(Pris1+"DKK",350,135);
  
  //Beregner total beløb uden moms
  text("Beløb uden moms:",240,500);
  int total = Pris1 + Pris2;
  text(total,340,500);
  
//Beregn momsen
  float belobMedMoms = beregnMoms(total);
  text("Beløb med moms:",240,520);
  text(belobMedMoms,340,520);

  //Beregn momsbeløbet
  float momsbb = momsBelob(total);
  text("Momsbeløb:",240,540);
  text(momsbb,340,540);
}
//Beregn moms funktionen
float beregnMoms(int total){
    return total * 1.25;
}
//beregner momsbeløbet
float momsBelob(int total){
  return total * 1.25 - total;
}
