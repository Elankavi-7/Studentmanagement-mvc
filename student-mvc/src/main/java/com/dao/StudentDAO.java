package com.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.pojo.Student;
import com.util.HibernateUtil;

public class StudentDAO {

    public void save(Student s) {
        Session session = HibernateUtil.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.save(s);

        tx.commit();
        session.close();
    }

        public List<Student> getAllStudents() {
        Session session = HibernateUtil.getFactory().openSession();

        List<Student> list = session.createQuery("from Student", Student.class).list();

        session.close();
        return list;
    }

//		public List<Student> getAllStudents1() {
//			
//			return null;
//		}
}