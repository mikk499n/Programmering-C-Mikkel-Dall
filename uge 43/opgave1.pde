//Opgave 1
//For loop
String s="Hej med dig!";
for(int i=0;i<s.length();i=i+1){
 if(i<5){
   print(s.charAt(i));}
 }
 println();
 
//While loop
int j=0;
while(j<s.length()){
  if(j<5){
    print(s.charAt(j));}
    j++;
}

//Optimering
println();
for(int k=0;k<5;k++){
 print(s.charAt(k)); 
}


println();
println(s.substring(0,5));
