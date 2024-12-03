import java.util.ArrayList;
import java.util.List;

//STARLIN ROQUE
public class InventoryController {
    private List<Inventory> inventories;

    public InventoryController() {
        inventories = new ArrayList<>();
    }

    public void addInventory(Inventory inventory) {
        inventories.add(inventory);
        System.out.println("Inventory added: " + inventory.toString());
    }

    public Inventory getInventory(int id) {
        for (Inventory inventory : inventories) {
            if (inventory.getId() == id) {
                return inventory;
            }
        }
        return null;
    }

    public void updateInventory(Inventory inventory) {
        int index = inventories.indexOf(getInventory(inventory.getId()));
        if (index != -1) {
            inventories.set(index, inventory);
            System.out.println("Inventory updated: " + inventory.toString());
        } else {
            System.out.println("Inventory not found.");
        }
    }

    public void deleteInventory(int id) {
        Inventory inventory = getInventory(id);
        if (inventory != null) {
            inventories.remove(inventory);
            System.out.println("Inventory deleted: " + inventory.toString());
        } else {
            System.out.println("Inventory not found.");
        }
    }

    public List<Inventory> getAllInventories() {
        return inventories;
    }
}
