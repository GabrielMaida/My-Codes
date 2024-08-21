void setup() {
  // put your setup code here, to run once:
  pinMode(3,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int x=0; x<=254; x+=2){
    analogWrite(3,x);
    delay(5);
  }
  for(int x=254; x>=0; x-=2){
    analogWrite(3,x);
    delay(5);
  }
}
