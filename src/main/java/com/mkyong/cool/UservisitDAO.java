package com.mkyong.cool;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import org.springframework.transaction.annotation.Transactional;



@Repository
@SuppressWarnings({ "unchecked", "rawtypes" })
public class UservisitDAO {

	@Autowired
	private SessionFactory sessionFactory1;
		@Transactional
		  public int findAll1() {
		    Session session = sessionFactory1.getCurrentSession();
		    List forumz = session.createQuery("from User_visit").list();
		    System.out.println(forumz.size());
		    return forumz.size();
		  }
		
		@Transactional
		public void saveUservisit(int p_id){
			User_visit usAdd = new User_visit();
			Calendar cal = Calendar.getInstance();
			//DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			usAdd.name = "name";usAdd.page_id = p_id;usAdd.date = cal.getTime().toString();
			sessionFactory1.getCurrentSession().save(usAdd);
			
		}
}
