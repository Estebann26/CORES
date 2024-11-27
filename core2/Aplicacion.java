import clases.Persona;
import clases.CuentaBancaria;


public class Aplicacion {
    public static void main(String[] args) {
        Persona persona1 = new Persona("Pedro", 23);
        Persona persona2 = new Persona("Juan", 35);
        Persona persona3 = new Persona("Diego", 27);

        CuentaBancaria cuenta1 = new CuentaBancaria(100.0, persona1);
        CuentaBancaria cuenta2 = new CuentaBancaria(200.0, persona2);
        CuentaBancaria cuenta3 = new CuentaBancaria(300.0, persona3);

        cuenta1.depositar(100.0);
        cuenta2.retirar(125.0);
        cuenta3.retirar(390.0);

        System.out.println("Saldo actual de Pedro: " + cuenta1.getSaldo());
        System.out.println("Saldo actual de Victor: " + cuenta2.getSaldo());
        System.out.println("Saldo actual de Jose: " + cuenta3.getSaldo());

        System.out.println("\nInformación de todas las cuentas:");
        CuentaBancaria.imprimeInformacionDeTodasLasCuentas();
    }
}