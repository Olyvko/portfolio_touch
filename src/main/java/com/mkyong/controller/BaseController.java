package com.mkyong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.mkyong.cool.Contact;
import com.mkyong.cool.ContactDAO;
import com.mkyong.cool.ContactOutput;
import com.mkyong.cool.UservisitDAO;
import com.mkyong.cool.User_visit;

import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/")
public class BaseController {

	@Autowired
	private UservisitDAO uvisit1;
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		
		uvisit1.saveUservisit(1);
		return "index";
	}

	
	@Autowired
	private UservisitDAO uvisit2;
	@RequestMapping(value = "/experience", method = RequestMethod.GET)
	public String experience() {
		uvisit2.saveUservisit(2);
		return "experience";
	}

	@Autowired
	private UservisitDAO uvisit3;
	@RequestMapping(value = "/projects", method = RequestMethod.GET)
	public String projects() {
		uvisit3.saveUservisit(3);
		return "projects";
	}

	@Autowired
	private UservisitDAO uvisit4;
	@Autowired
	private ContactDAO cont4;
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(ModelMap model) {
		uvisit4.saveUservisit(4);
		List<ContactOutput> res = cont4.gettAll();
		//Translite tr = new Translite();
		for(int i=0;i<res.size();i++){
			res.get(i).one.name_user = res.get(i).one.name_user; 
			res.get(i).one.message = res.get(i).one.message; 
			
		}
		model.addAttribute("allcont", res);
		return "contact";
	}
	
	@Autowired
	private UservisitDAO uvisit;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String ind() {
		uvisit.saveUservisit(5);
		return "index";
	}

	@Autowired
	private UservisitDAO uvisit5;
	@Autowired
	private ContactDAO cont1;
	@RequestMapping(value = "/addcontact", method = RequestMethod.POST, produces={"application/json; charset=UTF-8"})
	public @ResponseBody
	String addcontact(ModelMap model,@RequestParam("message") String message,@RequestParam("name") String name,@RequestParam("timenow") String timenow) {
		cont1.saveUservisit(name,message,timenow);
		uvisit5.saveUservisit(6);
		return name;
	}
	
}