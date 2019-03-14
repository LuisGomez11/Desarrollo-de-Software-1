package Controladores;

public class Operaciones {

    String salida;

    public String opcion(String operacion, float num1, float num2) {
        if (operacion.contains("Sumar")) {
            float resultado = num1 + num2;
            salida = "El resultado de la suma de " + num1 + " mas " + num2 + " es: " + resultado;
        } else if (operacion.contains("Restar")) {
            float resultado = num1 - num2;
            salida = "El resultado de la resta de " + num1 + " menos " + num2 + " es: " + resultado;
        } else if (operacion.contains("Multiplicar")) {
            float resultado = num1 * num2;
            salida = "El resultado de la multiplicacion de " + num1 + " por " + num2 + " es: " + resultado;
        } else if (num2 == 0) {
            salida = "No se puede dividir un numero entre 0";
        } else {
            float resultado = num1 / num2;
            salida = "El resultado de la division de " + num1 + " entre " + num2 + " es: " + resultado;
        }
        return salida;
    }

}
