package com.victorzhang.eduwisdom.domain;

import lombok.Data;

@Data
public class Search {
    private String id;
    private String searchContent;
    private String resourceId;
    private String searchCount;
    private String userId;
    private String isThreePart;
    private String gmtCreate;
    private String gmtModify;

    public Search() {
    }

    public Search(String searchContent) {
        this.searchContent = searchContent;
    }
}
