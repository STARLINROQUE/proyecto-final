
package com.example.model;

import com.example.data.Sales;

import java.util.ArrayList;
import java.util.HashMap;

public class ReportModel {
    private ArrayList<Sales> salesList;

    public ReportModel() {
        salesList = new ArrayList<>();
    }

    public void addSale(Sales sale) {
        salesList.add(sale);
    }

    public HashMap<String, Double> getSalesByBook(String bookTitle) {
        HashMap<String, Double> report = new HashMap<>();
        double totalSales = 0;
        int totalQuantity = 0;

        for (Sales sale : salesList) {
            if (sale.bookTitle.equals("some_condition")) { 
                totalSales += sale.quantity * 10; 
            }
        }
        report.put("Total Sales", totalSales);
        report.put("Total Quantity Sold", (double) totalQuantity);
        return report;
    }
}

