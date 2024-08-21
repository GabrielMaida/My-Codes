void setup()
{
  pinMode(4,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
}
void loop()
{
  digitalWrite(4,HIGH);
  delay(5000);
  digitalWrite(4,LOW);
  
  digitalWrite(3,HIGH);
  delay(1000);
  digitalWrite(3,LOW);
  
  digitalWrite(2,HIGH);
  delay(3000);
  digitalWrite(2,LOW);
}
