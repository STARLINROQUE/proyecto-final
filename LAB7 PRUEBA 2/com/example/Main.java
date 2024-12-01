
package com.example;

import com.example.model.Title;
import com.example.model.TitleModel;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        TitleModel titleModel = new TitleModel();
        Scanner scanner = new Scanner(System.in);
        int choice;
        
        do {
            System.out.println("Seleccione una opción:");
            System.out.println("1. Agregar título");
            System.out.println("2. Mostrar títulos");
            System.out.println("3. Salir");
            choice = scanner.nextInt();
            scanner.nextLine(); 
            
            switch (choice) {
                case 1:
                    /
                    System.out.println("Ingrese ID del título:");
                    int titleId = scanner.nextInt();
                    scanner.nextLine(); 
                    System.out.println("Ingrese nombre del título:");
                    String titleName = scanner.nextLine();
                    System.out.println("Ingrese género:");
                    String genre = scanner.nextLine();
                    System.out.println("Ingrese precio:");
                    double price = scanner.nextDouble();
                    titleModel.addTitle(new Title());
                    break;
                case 2:
                    
                    for (Title title : titleModel.getAllTitles()) {
                        System.out.println(title.titleId + ": " + title.title + " | Price: " + title.price);
                    }
                    break;
                case 3:
                    System.out.println("Saliendo.");
                    break;
                default:
                    System.out.println("Opción no válida.");
                    break;
            }
        } while (choice != 3);
        
        scanner.close();
    }
}

