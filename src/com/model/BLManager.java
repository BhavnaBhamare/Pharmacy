package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.Customer;

import com.pojo.Order;
import com.pojo.Stock;
import com.pojo.Supplier;

public class BLManager {
	SessionFactory sf = new Configuration().configure().buildSessionFactory();

	public List<Stock> viewallm() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Stock.class);
		List<Stock> e = cr.list();
		return e;
	}

	public void savemedicine(Stock s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.save(s);
		tr.commit();
		s1.close();
	}
	
	public void saveOrder(Order s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.save(s);
		tr.commit();
		s1.close();
	}
	public void saveCustomer(Customer s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.save(s);
		tr.commit();
		s1.close();
	}

	public Stock searchbyid(int id) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Stock.class);
		cr.add(Restrictions.eq("sid", id));
		Stock c = (Stock) cr.uniqueResult();
		return c;
	}
	
	 public Stock searchbymname(String mname) {
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Stock.class);
		cr.add(Restrictions.eq("mname", mname));
		Stock a=(Stock) cr.uniqueResult();
		s1.close();
		return a;
	}
 
	 
	 public List<Order> searchbyCustomer(int cid) {
			Session s1=sf.openSession();
			Criteria cr=s1.createCriteria(Order.class);
			
			cr.add(Restrictions.eq("customer.cid", cid));
			List<Order> a=cr.list();
			
			return a;
		}
	
	public void deleteid(Stock s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.delete(s);
		tr.commit();
		s1.close();

	}
	
	public void deletecustomer(Customer s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.delete(s);
		tr.commit();
		s1.close();

	}

	public Stock serachbyid(int id) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Stock.class);
		cr.add(Restrictions.eq("sid", id));
		Stock c = (Stock) cr.uniqueResult();
		return c;
	}

	public Customer serachbyCustomerid(int id) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Customer.class);
		cr.add(Restrictions.eq("cid", id));
		Customer c = (Customer) cr.uniqueResult();
		return c;
	}
	
	
	public Customer serachbyCustomername(String name) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Customer.class);
		cr.add(Restrictions.eq("cname", name));
		Customer c = (Customer) cr.uniqueResult();
		s1.close();
		return c;
	}
	
	public Supplier serachbySupplierName(String name) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Supplier.class);
		cr.add(Restrictions.eq("sname", name));
		Supplier c = (Supplier) cr.uniqueResult();
		return c;
	}
	public void updatemedicine(Stock s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.update(s);
		tr.commit();
		s1.close();

	}

	public void saveSupplier(Supplier s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.save(s);
		tr.commit();
		s1.close();

	}

	public Supplier searchbysid(int id) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Supplier.class);
		cr.add(Restrictions.eq("supid", id));
		Supplier c = (Supplier) cr.uniqueResult();
		return c;
	}

	public void deletesid(Supplier s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.delete(s);
		tr.commit();
		s1.close();

	}

	public Supplier serachbyid1(int id) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Supplier.class);
		cr.add(Restrictions.eq("supid", id));
		Supplier c = (Supplier) cr.uniqueResult();
		return c;
	}
	
	public List<Supplier> viewallsupplier() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Supplier.class);
		List<Supplier> e = cr.list();
		return e;
	}
	public List<Order> viewallorder() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Order.class);
		List<Order> e = cr.list();
		return e;
	}

	public List<Customer> viewallcustomer() {
		Session s = sf.openSession();
		Criteria cr = s.createCriteria(Customer.class);
		List<Customer> e = cr.list();
		return e;
	}

	public void updateSupplier(Supplier s) {
		Session s1 = sf.openSession();
		Transaction tr = s1.beginTransaction();
		s1.update(s);
		tr.commit();
		s1.close();
		
	}

}
