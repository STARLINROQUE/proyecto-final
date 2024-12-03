import java.util.ArrayList;
import java.util.List;

//STARLIN ROQUE

public class FilmController {
    private List<Film> films;

    public FilmController() {
        films = new ArrayList<>();
    }

    public void addFilm(Film film) {
        films.add(film);
        System.out.println("Film added: " + film.toString());
    }

    public Film getFilm(int id) {
        for (Film film : films) {
            if (film.getId() == id) {
                return film;
            }
        }
        return null;
    }

    public void updateFilm(Film film) {
        int index = films.indexOf(getFilm(film.getId()));
        if (index != -1) {
            films.set(index, film);
            System.out.println("Film updated: " + film.toString());
        } else {
            System.out.println("Film not found.");
        }
    }

    public void deleteFilm(int id) {
        Film film = getFilm(id);
        if (film != null) {
            films.remove(film);
            System.out.println("Film deleted: " + film.toString());
        } else {
            System.out.println("Film not found.");
        }
    }

    public List<Film> getAllFilms() {
        return films;
    }
}
