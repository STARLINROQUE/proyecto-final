import java.util.Date;

/
public class Title {
    public int titleId;
    public String title;
    public String genre;
    public Date pubDate;
    public double price;

    public Title() {}

    public Title(int titleId, String title, String genre, Date pubDate, double price) {
        this.titleId = titleId;
        this.title = title;
        this.genre = genre;
        this.pubDate = pubDate;
        this.price = price;
    }
}
