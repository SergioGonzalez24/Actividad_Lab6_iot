int valFotores() {
	int V = analogRead(LDR);
	int iluminacion = ((long)V*A*10)/((long)B*Rc*(1024-V));
	return iluminacion;
}

float valHumendad() {
}
