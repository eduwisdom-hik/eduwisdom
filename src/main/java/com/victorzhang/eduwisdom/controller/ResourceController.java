package com.victorzhang.eduwisdom.controller;

import com.ibm.icu.text.SimpleDateFormat;
import com.victorzhang.eduwisdom.domain.Resource;
import com.victorzhang.eduwisdom.service.ResourceService;
import com.victorzhang.eduwisdom.util.CommonUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import static com.victorzhang.eduwisdom.util.Constants.*;

@Controller
@RequestMapping("resource")
public class ResourceController {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    @Qualifier("resourceService")
    private ResourceService resourceService;

    @RequestMapping("/forwardUserResourceUI.do")
    public String forwardUserResourceUI() {
        return "userResource";
    }

    @RequestMapping(value = "/doUploadResource.do", method = RequestMethod.POST)
    @ResponseBody
    public void doUploadResource(MultipartFile resourceFile, String resourceName, String resourceDescription, String resourceTag, String resourceType) throws Exception {
        if (StringUtils.isEmpty(resourceName) || StringUtils.isEmpty(resourceTag) || StringUtils.isEmpty(resourceTag)) {
            throw new IllegalArgumentException(ARGS_ERROR);
        }
        resourceService.doUploadResource(resourceFile, resourceName, resourceDescription, resourceTag, resourceType, request);
    }

    @RequestMapping("/listPaging.do")
    @ResponseBody
    public Map<String, Object> listPaging(String _page, String _pageSize, String resourceName, String resourceType, String verifyType, String startDate, String endDate) throws Exception {

        Resource resource = new Resource();
        resource.setUserId(CommonUtils.sesAttr(request, USER_ID));
        resource.setResourceType(resourceType);
        resource.setResourceName(resourceName);
        resource.setVerifyType(verifyType);
        return resourceService.listPaging(resource, _page, _pageSize, startDate, endDate, null);
    }

    @RequestMapping("/getById.do")
    @ResponseBody
    public Resource getById(String id) throws Exception {
        return resourceService.getById(id);
    }

    @RequestMapping(value = "/doDownloadResource.do", method = RequestMethod.GET)
    @ResponseBody
    public void doDownloadResource(HttpServletResponse response, String id) throws Exception {
        resourceService.doDownloadResource(response, request, id);
    }

    @RequestMapping("/removeResource.do")
    @ResponseBody
    public void removeResource(String id) throws Exception {
        Resource resource = resourceService.getById(id);
        File file = new File(resource.getResourceServerPath());
        if (file.isFile() && file.exists()) {
            file.delete();
            if (!resourceService.remove(id)) {
                throw new SQLException(REMOVE_ERROR);
            }
            resourceService.removeRecordAboutThisResource(id);
        } else {
            throw new FileNotFoundException(FILE_NOT_FOUND);
        }
    }

    @RequestMapping("/forwardSystemResourceUI")
    public String forwardSystemResourceUI() {
        return "systemResource";
    }
    @RequestMapping("/forwardCompanyResourceUI")
    public String forwardCompanyResourceUI(){
    	return "companyResource";
    }
    @RequestMapping("/listSystemResourcePaging.do")
    @ResponseBody
    public Map<String, Object> listSystemResourcePaging(String _page, String _pageSize, String resourceName, String resourceType, String startDate, String endDate) throws Exception {
        //insert correct message to search table
        resourceService.insertOrUpdateSearchTable(SYSTEM_SEARCH_OPERATION, resourceName);
        Resource resource = new Resource(resourceName, resourceType, RESOURCE_VERIFY_SUCCESS);
        return resourceService.listPaging(resource, _page, _pageSize, startDate, endDate, null);
    }
    
    @RequestMapping("/listCompanyResourcePaging.do")
    @ResponseBody
    public Map<String, Object> listCompanyResourcePaging(String _page, String _pageSize, String companyName, String resourceName, String resourceType, String startDate, String endDate) throws Exception {
        //insert correct message to search table
        resourceService.insertOrUpdateSearchTable(THREE_PART_SEARCH_OPERATION, resourceName);
    	String roleType=ROLE_TYPE_THIRDPART;
    	Resource resource = new Resource(resourceName,roleType, resourceType, RESOURCE_VERIFY_SUCCESS);
    	return resourceService.companyResourceListPaging(resource, _page, _pageSize, companyName, startDate, endDate, null);
    }

    @RequestMapping("/listNewestResource.do")
    @ResponseBody
    public Map<String, Object> listNewestResource() throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("data", CommonUtils.dataNull(resourceService.listNewestResource()));
        return map;
    }

    @RequestMapping("/listHotResource.do")
    @ResponseBody
    public Map<String, Object> listHotResource() throws Exception {
        Map<String, Object> map = new HashMap<>();
        map.put("data", CommonUtils.dataNull(resourceService.listHotResource(HOT_RESOURCE_SHOW_NUM)));
        return map;
    }

    @RequestMapping("/forwardVerifyResourceUI.do")
    public String forwardVerifyResourceUI() throws Exception {
        return "verifyResource";
    }

    @RequestMapping("/listVerifyResource.do")
    @ResponseBody
    public Map<String, Object> listVerifyResource(String _page, String _pageSize, String resourceName, String resourceType, String startDate, String endDate) throws Exception {
        //admin permission
        if (StringUtils.equals(CommonUtils.sesAttr(request, ROLE_ID), ADMIN_ROLE_ID)) {
            Resource resource = new Resource(resourceName, resourceType, RESOURCE_VERIFYING);
            return resourceService.listPaging(resource, _page, _pageSize, startDate, endDate, null);
        }
        throw new IllegalAccessException(NO_ACCESS_PERMISSION);
    }

    @RequestMapping(value = "/doVerifyResource.do", produces = {"text/javascript;charset=UTF-8"})
    @ResponseBody
    public String doVerifyResource(String resourceId, String verifyType) throws Exception {
        return resourceService.doVerifyResource(resourceId, verifyType, request);
    }

    @RequestMapping("/getResourceDetailUI.do")
    public String getResourceDetailUI() throws Exception {
        return "resourceDetail";
    }

    @RequestMapping("/getResourceDetail.do")
    @ResponseBody
    public Map<String, Object> getResourceDetail(String id) throws Exception {
        return resourceService.getResourceDetail(id);
    }

    @RequestMapping("/updateResourceBrowseCount.do")
    @ResponseBody
    public void updateResourceBrowseCount(String resourceId) throws Exception {
        resourceService.updateResourceBrowseCount(resourceId, request);
    }

    @RequestMapping("/listRecommendationResource.do")
    @ResponseBody
    public Map<String, Object> listRecommendationResource(String _page, String _pageSize) throws Exception {
        return resourceService.listRecommendationResource(_page, _pageSize, request);

    }

    @RequestMapping("/forwardRecommendedResourceUI.do")
    public String forwardRecommendedResourceUI() throws Exception {
        return "recommendedResource";

    }
    
    @RequestMapping("/forwardFindResourceUI.do")
    public String findResourceByMap(){
    	return "mapResources";
    }
    
    @RequestMapping("/showEchartsByRole.do")
    @ResponseBody
    public Map<String, Object> showEchartsByRole() throws Exception{
    	int countUser=resourceService.countResourceByRole(ROLE_TYPE_USER);
        int countAdmin=resourceService.countResourceByRole(ROLE_TYPE_ADMIN);
        int countThirdPart=resourceService.countResourceByRole(ROLE_TYPE_THIRDPART);
        Map<String, Object> map=new HashMap<String,Object>();
        map.put("countUser", countUser);
        map.put("countAdmin", countAdmin);
        map.put("countThirdPart", countThirdPart);
        return map;
    }
    @RequestMapping("/showEchartsByResourceType.do")
    @ResponseBody
    public Map<String, Object> showEchartsByResourceType() throws Exception{
    	int countpic=resourceService.countResourceByResourceType(PICTURE);
    	int countdoc=resourceService.countResourceByResourceType(DOCUMENT);
    	int countvoice=resourceService.countResourceByResourceType(VOICE);
    	int countvideo=resourceService.countResourceByResourceType(VIDEO);
        Map<String, Object> map=new HashMap<String,Object>();
        map.put("countpic", countpic);
        map.put("countdoc", countdoc);
        map.put("countvoice", countvoice);
        map.put("countvideo", countvideo);
        return map;
    }
    @RequestMapping("/showEchartsByDate.do")
    @ResponseBody
    public Map<String , Object> showEchartsByDate() throws Exception{
    	Date now=new Date();
    	SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
    	Calendar date = Calendar.getInstance();
    	Map<String, Object> map=new HashMap<String, Object>();
    	for(int i=0;i<=7;i++)
    	{
    		//now=new Date((Long)System.currentTimeMillis()-1000*60*60*24*i);
    		date.setTime(now);
    		date.set(Calendar.DATE, date.get(Calendar.DATE)-1);
    		now=sf.parse(sf.format(date.getTime()));
    		map.put(sf.format(now), resourceService.countResourceByDate(sf.format(now), sf.format(now)));
    	}
    	return map;
    }
    
}
