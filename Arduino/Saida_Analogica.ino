void setup() {
  // put your setup code here, to run once:
  pinMode(3,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite(3,255);
  delay(2000);
  analogWrite(3,191);
  delay(2000);
  analogWrite(3,127);
  delay(2000);
  analogWrite(3,64);
  delay(2000);
  analogWrite(3,0);
  delay(2000);
}
