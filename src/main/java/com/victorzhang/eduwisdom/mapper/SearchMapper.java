package com.victorzhang.eduwisdom.mapper;

import com.victorzhang.eduwisdom.domain.Search;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Repository
public interface SearchMapper  extends BaseMapper<Search, String> {
    List<Map<String,Object>> getSearchByUserId(String userId) throws SQLException;

    List<Map<String,Object>> getSimilarSearchContent(Map<String,Object> param) throws SQLException;
}
