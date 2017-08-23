package com.victorzhang.eduwisdom.domain;

import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {

    private String id;
    private String roleId;
    private String username;
    private String password;
    private String realname;
    private String userIdcard;
    private String userMobile;
    private String userEmail;
    private String randomCode;
    //false--male and true--female
    private String gender;
    private String tag;
    private String gmtCreate;
    private String gmtModify;

    public User(){}
    
    public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
    
    public User(String username, String password, String roleId){
        this.username = username;
        this.password = password;
        this.roleId = roleId;
    }

    public User(String userEmail){
        this.userEmail = userEmail;
    }

    public User(String id, String username, String realname, String userMobile, String userIdCard, String userEmail, String gender, String tag, String  gmtModify) {
        this.id = id;
        this.username = username;
        this.realname = realname;
        this.userMobile = userMobile;
        this.userIdcard = userIdCard;
        this.userEmail = userEmail;
        this.gender = gender;
        this.tag = tag;
        this.gmtModify = gmtModify;
    }


	
}
