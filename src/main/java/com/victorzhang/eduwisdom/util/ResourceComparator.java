package com.victorzhang.eduwisdom.util;

import java.util.Comparator;
import java.util.Map;

public class ResourceComparator implements Comparator<Map<String, Object>> {
    @Override
    public int compare(Map<String, Object> o1, Map<String, Object> o2) {
        Integer  ratingI = (int) o1.get("rating");
        Integer  ratingJ = (int) o2.get("rating");
        if  (ratingJ != null) {
            return ratingJ.compareTo(ratingI);
        }
        return 0;
    }
}
