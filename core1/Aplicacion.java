import clases.Algoritmos;

public class Aplicacion {
    public static void main(String[] args) {
        System.out.println("El 4 es par?: " + Algoritmos.esPar(4));
        System.out.println("El 7 es par?: " + Algoritmos.esPar(7));

        System.out.println("El 11 es primo?: " + Algoritmos.esPrimo(11));
        System.out.println("El 12 es primo?: " + Algoritmos.esPrimo(12));

        System.out.println("String en reversa 'Alegria': " + Algoritmos.stringEnReversa("Alegria"));

        System.out.println("Es palindromo 'rallar'?: " + Algoritmos.esPalindromo("rallar"));
        System.out.println("Es palindromo 'dona'?: " + Algoritmos.esPalindromo("dona"));

        System.out.print("Secuencia FizzBuzz hasta el numero 15: ");
        Algoritmos.secuenciaFizzBuzz(15);
    }
}