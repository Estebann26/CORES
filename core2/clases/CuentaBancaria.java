package clases;

import java.util.ArrayList;
import java.util.Random;

public class CuentaBancaria {
    private double saldo;
    private Persona titular;
    private int numeroCuenta;
    private static ArrayList<CuentaBancaria> listaDeCuentasBancarias = new ArrayList<>();

    public CuentaBancaria(double saldo, Persona titular) {
        this.saldo = saldo;
        this.titular = titular;
        this.numeroCuenta = generarNumeroCuenta();
        listaDeCuentasBancarias.add(this);
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public Persona getTitular() {
        return titular;
    }

    public void setTitular(Persona titular) {
        this.titular = titular;
    }

    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    private int generarNumeroCuenta() {
        Random rand = new Random();
        return 100000 + rand.nextInt(900000);
    }

    public void depositar(double monto) {
        saldo += monto;
    }

    public boolean retirar(double monto) {
        if (saldo >= monto) {
            saldo -= monto;
            return true;
        } else {
            System.out.println("No hay suficientes fondos");
            return false;
        }
    }

    public void despliegaInformacion() {
        System.out.println("Numero de Cuenta: " + numeroCuenta + "/ Saldo: " + saldo);
        System.out.print("Titular: ");
        titular.despliegaInformacion();
    }

    public static void imprimeInformacionDeTodasLasCuentas() {
        for (CuentaBancaria cuenta : listaDeCuentasBancarias) {
            cuenta.despliegaInformacion();
            System.out.println();
        }
    }
}