/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.User;
import com.util.HibernateUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author cerpas
 */
public class UserDao {

    public void saveUser(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }

    public List<User> showAllUsers() {
        List<User> usuarios = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        //se utiliza el nombre de la entidad en la consulta no el nombre de la tabla
        Query query = session.createQuery("From User");
        usuarios = query.list();
        return usuarios;
    }

    public User getUserById(int id){
        Session session = HibernateUtil.getSessionFactory().openSession();
       // Transaction transaction = session.beginTransaction();
        User user = (User) session.load(User.class, id); 
        return user;
    }
    
    public void updateUsers(int id, String firstName, String LastName, Date Dob, String Email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        User user = (User) session.get(User.class, id);
        user.setFirstName(firstName);
        user.setLastName(LastName);
        user.setDob(Dob);
        user.setEmail(Email);
        session.update(user);
        transaction.commit();
        session.close();
    }

    public void deleteUsers(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        User user = (User) session.load(User.class, id);
        session.delete(user);
        transaction.commit();
        session.close();
    }
}
