import java.util.ArrayList;
import java.util.List;

//STARLIN ROQUE
public class RentalController {
    private List<Rental> rentals;

    public RentalController() {
        rentals = new ArrayList<>();
    }

    public void addRental(Rental rental) {
        rentals.add(rental);
        System.out.println("Rental added: " + rental.toString());
    }

    public Rental getRental(int id) {
        for (Rental rental : rentals) {
            if (rental.getId() == id) {
                return rental;
            }
        }
        return null;
    }

    public void updateRental(Rental rental) {
        int index = rentals.indexOf(getRental(rental.getId()));
        if (index != -1) {
            rentals.set(index, rental);
            System.out.println("Rental updated: " + rental.toString());
        } else {
            System.out.println("Rental not found.");
        }
    }

    public void deleteRental(int id) {
        Rental rental = getRental(id);
        if (rental != null) {
            rentals.remove(rental);
            System.out.println("Rental deleted: " + rental.toString());
        } else {
            System.out.println("Rental not found.");
        }
    }

    public List<Rental> getAllRentals() {
        return rentals;
    }
}