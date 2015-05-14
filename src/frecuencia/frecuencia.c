static int frequency=-1; // pulsos por segundo
static int rpm=-1; // revoliciones por minuto
static float ppr=-1; // ppr pulsos por revolicion
//static float ppp=-1; // paso por pulso

int rpm2hz(int rpm)
{
	frequency = (rpm/60)*ppr;
	return frequency;
}

int hz2rpm(int frequency)
{
	rpm = (frequency/ppr)*60;
	return rpm;
}
