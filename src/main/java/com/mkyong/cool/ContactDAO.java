package com.mkyong.cool;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;




@Repository
@SuppressWarnings({ "unchecked", "rawtypes" })
public class ContactDAO {
	@Autowired
	private SessionFactory sessionFactory1;
	private SessionFactory sessionFactory2;

		@Transactional
		public void saveUservisit(String name, String message, String timenow){
			System.out.println(name);
			Contact contactAdd = new Contact();
			contactAdd.id_user = 2;contactAdd.name_user = name;contactAdd.id_dialog = 1;contactAdd.message = message;contactAdd.date = timenow;
			sessionFactory1.getCurrentSession().save(contactAdd);
			
		}

		  @Transactional
		  public List<ContactOutput> gettAll() {
		    Session session = sessionFactory1.getCurrentSession();
		    List<Contact>  cont = session.createQuery("from Contact where id_user = '2'").list();
		    List<ContactOutput> cont_out = new ArrayList<ContactOutput>();
		    for(int i=0;i<cont.size();i++){
		    	Contact con = cont.get(i);
		    	Contact con_t = null;
		    	int id_c = con.id;
		    	Contact c = getContIdDialog(id_c);
		    	if(c!=null)
		    		con_t = c;
		    	
		    	cont_out.add(new ContactOutput(con, con_t));
		    	
		    }
		    System.out.println("s "+cont.size());
		    return cont_out;
		  }

		  @Transactional
		  public Contact getContIdDialog(int id){
			      Session session1 = sessionFactory1.getCurrentSession();
				  String qqq = "from Contact where id_dialog = "+id;
				 // System.out.println(qqq);
				 // Query
				  Contact co = (Contact) session1.createQuery(qqq.trim()).uniqueResult();
				  return co;
		  }
}
