void setup() {
  pinMode(2,INPUT);
  pinMode(3,OUTPUT);
  Serial.begin(9600);
}

void loop() {  
  if(digitalRead(2)==HIGH){
    Serial.println("Ligado");
  }
  else{
    Serial.println("Desligado");
  }
}
