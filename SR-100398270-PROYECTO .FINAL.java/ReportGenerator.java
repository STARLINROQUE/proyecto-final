import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

//STARLIN ROQUE
public class ReportGenerator {

    public void exportToCSV(List<?> data, String filePath) {
        try (FileWriter writer = new FileWriter(filePath)) {
            for (Object obj : data) {
                writer.write(obj.toString() + "\n");
            }
            System.out.println("Data exported to CSV file: " + filePath);
        } catch (IOException e) {
            System.out.println("An error occurred while exporting to CSV: " + e.getMessage());
        }
    }

    public void exportToJSON(List<?> data, String filePath) {
        try (FileWriter writer = new FileWriter(filePath)) {
            writer.write("[\n");
            for (int i = 0; i < data.size(); i++) {
                writer.write(data.get(i).toString());
                if (i < data.size() - 1) {
                    writer.write(",\n");
                }
            }
            writer.write("\n]");
            System.out.println("Data exported to JSON file: " + filePath);
        } catch (IOException e) {
            System.out.println("An error occurred while exporting to JSON: " + e.getMessage());
        }
    }

    public void generateStatistics(List<Inventory> inventories, List<Rental> rentals, List<Film> films) {
        System.out.println("Generating statistics...");

        
        System.out.println("Total de inventarios: " + inventories.size());

        System.out.println("Total de rentas: " + rentals.size());

       
        System.out.println("Total de películas: " + films.size());

        
        double averageRentalsPerInventory = rentals.size() / (double) inventories.size();
        System.out.println("Promedio de rentas por inventario: " + averageRentalsPerInventory);

    }
}
