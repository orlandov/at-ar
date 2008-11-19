/*
    Hi, Robot, Welcome!
    Drive your way into my heart
    Autonomously
    Orlando Vazquez, Noov 2008

    vim:ft=cpp
*/

const byte motor0_pwm = 9;
const byte motor0_pin0 = 2;
const byte motor0_pin1 = 3;

const byte motor1_pwm = 6;
const byte motor1_pin0 = 5;
const byte motor1_pin1 = 4;

void drive_forwards() {
    digitalWrite(motor0_pin0, HIGH);
    digitalWrite(motor0_pin1, LOW);
    digitalWrite(motor1_pin0, HIGH);
    digitalWrite(motor1_pin1, LOW);
}

void drive_backwards() {
    digitalWrite(motor0_pin0, LOW);
    digitalWrite(motor0_pin1, HIGH);
    digitalWrite(motor1_pin0, LOW);
    digitalWrite(motor1_pin1, HIGH);
}

void turn_left() {
    digitalWrite(motor0_pin0, LOW);
    digitalWrite(motor0_pin1, HIGH);
    digitalWrite(motor1_pin0, HIGH);
    digitalWrite(motor1_pin1, LOW);
}

void turn_right() {
    digitalWrite(motor0_pin0, HIGH);
    digitalWrite(motor0_pin1, LOW);
    digitalWrite(motor1_pin0, LOW);
    digitalWrite(motor1_pin1, HIGH);
}

void setup() {
    // setup the motor control pins as outputs
    pinMode(motor0_pwm, OUTPUT);
    pinMode(motor0_pin0, OUTPUT);
    pinMode(motor0_pin1, OUTPUT);
    pinMode(motor1_pwm, OUTPUT);
    pinMode(motor1_pin0, OUTPUT);
    pinMode(motor1_pin1, OUTPUT);

    digitalWrite(13, HIGH);
    delay(100);
    digitalWrite(13, LOW);
    delay(100);
    digitalWrite(13, HIGH);
    delay(100);
    digitalWrite(13, LOW);
    delay(100);
    digitalWrite(13, HIGH);
    delay(100);
    digitalWrite(13, LOW);
    delay(100);
    // start the motor on full to get it going
    analogWrite(motor0_pwm, 255);
    analogWrite(motor1_pwm, 255);
}

void loop() {
    drive_forwards();
    delay(5000);
    turn_left();
    delay(3000);
    drive_forwards();
    delay(5000);
    turn_right();
    delay(3000);
}



