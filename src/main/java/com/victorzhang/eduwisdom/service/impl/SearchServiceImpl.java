package com.victorzhang.eduwisdom.service.impl;

import com.victorzhang.eduwisdom.domain.Search;
import com.victorzhang.eduwisdom.mapper.BaseMapper;
import com.victorzhang.eduwisdom.mapper.SearchMapper;
import com.victorzhang.eduwisdom.service.ResourceService;
import com.victorzhang.eduwisdom.service.SearchService;
import com.victorzhang.eduwisdom.util.CommonUtils;
import com.victorzhang.eduwisdom.util.ResourceComparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

import static com.victorzhang.eduwisdom.util.Constants.USER_ID;

@Service("searchService")
public class SearchServiceImpl extends BaseServiceImpl<Search, String> implements SearchService {

    @Autowired
    @Qualifier("resourceService")
    private ResourceService resourceService;

    @Autowired
    @Qualifier("searchMapper")
    private SearchMapper searchMapper;

    @Override
    protected BaseMapper<Search, String> getMapper() {
        return searchMapper;
    }

    @Override
    public Map<String, Object> listSearchRecommendationResource(HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<>();
        List<Map<String, Object>> recommendationSearchs = new ArrayList<>();
        String userId = CommonUtils.sesAttr(request, USER_ID);
        List<Map<String, Object>> searchs = searchMapper.getSearchByUserId(userId);

        for (int i = 0; i < searchs.size(); i++) {
            int searchCount = (int) searchs.get(i).get("search_count");
            Map<String, Object> param = new HashMap<>();
            param.put("searchContent", searchs.get(i).get("search_content"));
            param.put("userId", userId);
            List<Map<String, Object>> similarSearchs = searchMapper.getSimilarSearchContent(param);
            for (int j = 0; j < similarSearchs.size(); j++) {
                recommendationSearchs.add(constructRecommdationSearch(similarSearchs, j, searchCount));
            }
        }

        Collections.sort(recommendationSearchs, new ResourceComparator());
        result.put("data", CommonUtils.dataNull(recommendationSearchs));
        return result;
    }

    private Map<String, Object> constructRecommdationSearch(List<Map<String, Object>> similarSearchs, int index, int searchCount)
            throws Exception {
        Map<String, Object> recomemdationSearch = new HashMap<>();
        int similarSearchsCount = (int) similarSearchs.get(index).get("search_count");
        int rating = (int) (searchCount * 0.2 + similarSearchsCount * 0.8);
        recomemdationSearch.put("rating", rating);
        String resourceId = String.valueOf(similarSearchs.get(index).get("resource_id"));
        recomemdationSearch.put("resource", resourceService.getById(resourceId));
        return recomemdationSearch;
    }
}