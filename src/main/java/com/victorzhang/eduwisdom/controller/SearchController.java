package com.victorzhang.eduwisdom.controller;

import com.victorzhang.eduwisdom.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("search")
public class SearchController {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    @Qualifier("searchService")
    private SearchService searchService;

    @RequestMapping("/listSearchRecommendationResource.do")
    @ResponseBody
    public Map<String, Object> listSearchRecommendationResource() throws Exception {
        return searchService.listSearchRecommendationResource(request);
    }
}
