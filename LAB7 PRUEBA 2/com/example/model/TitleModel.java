
package com.example.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class TitleModel {
    private ArrayList<Title> allTitles;

    public TitleModel() {
        allTitles = new ArrayList<>();
    }

    public void addTitle(Title title) {
        allTitles.add(title);
    }

    public ArrayList<Title> getAllTitles() {
        return allTitles;
    }

    public Title getTitleById(int titleId) {
        for (Title title : allTitles) {
            if (title.titleId == titleId) {
                return title;
            }
        }
        return null;
    }

    public boolean updateTitle(Title updatedTitle) {
        for (int i = 0; i < allTitles.size(); i++) {
            if (allTitles.get(i).titleId == updatedTitle.titleId) {
                allTitles.set(i, updatedTitle);
                return true;
            }
        }
        return false;
    }

    public boolean deleteTitle(int titleId) {
        return allTitles.removeIf(title -> title.titleId == titleId);
    }
}

    

