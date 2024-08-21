
int led = 2;
int sensor = 5;
int estado = LOW;
int anterior = LOW;

void setup() {
    pinMode(led,OUTPUT);
    pinMode(sensor,INPUT);
}

void loop() {
    int atual = digitalRead(sensor);
    if(anterior == LOW && atual == HIGH)
    {

    }
    anterior = atual;
}
