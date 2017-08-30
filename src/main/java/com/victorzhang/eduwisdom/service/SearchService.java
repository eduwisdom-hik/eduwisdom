package com.victorzhang.eduwisdom.service;

import com.victorzhang.eduwisdom.domain.Search;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public interface SearchService extends BaseService<Search, String> {
    Map<String,Object> listSearchRecommendationResource(HttpServletRequest request) throws Exception;
}
