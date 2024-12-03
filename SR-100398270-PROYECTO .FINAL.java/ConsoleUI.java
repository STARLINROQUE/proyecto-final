import java.util.Scanner;

//STARLIN ROQUE
public class ConsoleUI {
    @SuppressWarnings("unused")
    private InventoryController inventoryController;
    @SuppressWarnings("unused")
    private RentalController rentalController;
    @SuppressWarnings("unused")
    private FilmController filmController;
    private Scanner scanner;

    public ConsoleUI() {
        inventoryController = new InventoryController();
        rentalController = new RentalController();
        filmController = new FilmController();
        scanner = new Scanner(System.in);
    }

    public void start() {
        boolean running = true;
        while (running) {
            System.out.println("\t\nRenta De Peliculas De Cines:");
            System.out.println("\n\nSeleccione una opción:");
            System.out.println("\n1. Gestión de Inventario");
            System.out.println("2. Gestión de Rentas");
            System.out.println("3. Gestión de Películas");
            System.out.println("4. Salir\n");
            int choice = scanner.nextInt();
            scanner.nextLine(); 

            switch (choice) {
                case 1:
                    manageInventory();
                    break;
                case 2:
                    manageRentals();
                    break;
                case 3:
                    manageFilms();
                    break;
                case 4:
                    running = false;
                    break;
                default:
                    System.out.println("\nOpción no válida. Intente de nuevo.");
            }
        }
    }

    private void manageInventory() {
        System.out.println("\nGestión de Inventario\n");
        System.out.println("1. Agregar Inventario");
        System.out.println("2. Ver Inventario");
        System.out.println("3. Actualizar Inventario");
        System.out.println("4. Eliminar Inventario");
        int choice = scanner.nextInt();
        scanner.nextLine(); 

        switch (choice) {
            case 1:
                System.out.println("\nIngrese los detalles del inventario");
                System.out.print("\nID: ");
                int id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Nombre: ");
                String name = scanner.nextLine();
                Inventory newInventory = new Inventory(id, name);
                inventoryController.addInventory(newInventory);
                break;
            case 2:
                System.out.println("\nIngrese el ID del inventario a ver:");
                id = scanner.nextInt();
                scanner.nextLine(); 
                Inventory inventory = inventoryController.getInventory(id);
                System.out.println(inventory != null ? inventory : "\nInventario no encontrado.");
                break;
            case 3:
                System.out.println("\nIngrese los detalles del inventario a actualizar:");
                System.out.print("\nID: ");
                id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Nombre: ");
                name = scanner.nextLine();
                Inventory updatedInventory = new Inventory(id, name);
                inventoryController.updateInventory(updatedInventory);
                break;
            case 4:
                System.out.println("\nIngrese el ID del inventario a eliminar:");
                id = scanner.nextInt();
                scanner.nextLine();
                inventoryController.deleteInventory(id);
                break;
            default:
                System.out.println("\nOpción no válida. Intente de nuevo.");
        }
    }

    private void manageRentals() {
        System.out.println("\n\nGestión de Rentas:");
        System.out.println("\n1. Agregar Renta");
        System.out.println("2. Ver Renta");
        System.out.println("3. Actualizar Renta");
        System.out.println("4. Eliminar Renta");
        int choice = scanner.nextInt();
        scanner.nextLine(); 

        switch (choice) {
            case 1:
                System.out.println("\nIngrese los detalles de la renta");
                System.out.print("\nID: ");
                int id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Fecha de Renta: ");
                String rentalDate = scanner.nextLine();
                Rental newRental = new Rental(id, rentalDate);
                rentalController.addRental(newRental);
                break;
            case 2:
                System.out.println("\nIngrese el ID de la renta a ver:");
                id = scanner.nextInt();
                scanner.nextLine(); 
                Rental rental = rentalController.getRental(id);
                System.out.println(rental != null ? rental : "\nRenta no encontrada.");
                break;
            case 3:
                System.out.println("\nIngrese los detalles de la renta a actualizar:");
                System.out.print("\nID: ");
                id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Fecha de Renta: ");
                rentalDate = scanner.nextLine();
                Rental updatedRental = new Rental(id, rentalDate);
                rentalController.updateRental(updatedRental);
                break;
            case 4:
                System.out.println("\nIngrese el ID de la renta a eliminar:");
                id = scanner.nextInt();
                scanner.nextLine(); 
                rentalController.deleteRental(id);
                break;
            default:
                System.out.println("\nOpción no válida. Intente de nuevo.");
        }
    }

    private void manageFilms() {
        System.out.println("\n\nGestión de Películas:");
        System.out.println("\n1. Agregar Película");
        System.out.println("2. Ver Película");
        System.out.println("3. Actualizar Película");
        System.out.println("4. Eliminar Película");
        int choice = scanner.nextInt();
        scanner.nextLine(); 

        switch (choice) {
            case 1:
                System.out.println("\nIngrese los detalles de la película:");
                System.out.print("\nID: ");
                int id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Título: ");
                String title = scanner.nextLine();
                Film newFilm = new Film(id, title);
                filmController.addFilm(newFilm);
                break;
            case 2:
                System.out.println("\nIngrese el ID de la película a ver:");
                id = scanner.nextInt();
                scanner.nextLine();
                Film film = filmController.getFilm(id);
                System.out.println(film != null ? film : "\nPelícula no encontrada.");
                break;
            case 3:
                System.out.println("\nIngrese los detalles de la película a actualizar");
                System.out.print("\nID: ");
                id = scanner.nextInt();
                scanner.nextLine(); 
                System.out.print("Título: ");
                title = scanner.nextLine();
                Film updatedFilm = new Film(id, title);
                filmController.updateFilm(updatedFilm);
                break;
            case 4:
                System.out.println("\nIngrese el ID de la película a eliminar:");
                id = scanner.nextInt();
                scanner.nextLine(); 
                filmController.deleteFilm(id);
                break;
            default:
                System.out.println("\nOpción no válida. Intente de nuevo.");
        }
    }
}

