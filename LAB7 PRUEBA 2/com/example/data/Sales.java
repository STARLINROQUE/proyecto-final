package com.example.data;

import java.util.Date;

public class Sales {
    public int saleId;
    public int bookId;
    public int storeId;
    public int quantity;
    public Date saleDate;
    public Object bookTitle;

    public Sales() {}

    public Sales(int saleId, int bookId, int storeId, int quantity, Date saleDate) {
        this.saleId = saleId;
        this.bookId = bookId;
        this.storeId = storeId;
        this.quantity = quantity;
        this.saleDate = saleDate;
    }
}
    

