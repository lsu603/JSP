package book;

public class BookDTO {
    private int id;
    private String title;
    private String author;
    private int price;
    private int qty;

    //getter,setter,toString,생성자 2 개    public BookDTO() { //기본생성자    }

    public BookDTO() {
        this.id = id;
        this.title = title;
        this.author = author;
        this.price = price;
        this.qty = qty;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    @Override
    public String toString() {
        return "BookDTO [id=" + id + "," +
                " title=" + title + ", " +
                "author=" + author + ", " +
                "price=" + price + ", " +
                "qty=" + qty + "]";
    }
}