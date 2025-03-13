package org.webapplication.repositories;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.webapplication.backend.models.User;
import org.webapplication.utils.MySessionFactory;


@Repository
@Scope("singleton")
public class LoginRegRepository {



    public int reg(String firstName,
                       String lastName,
                       String email,
                       String phone,
                       String password){
        int returnStatus = 0;
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        String pass = (String) session.createQuery("select password from User where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        if(pass!=null){
            returnStatus = 1;
        }else {
            User user = new User(null,firstName,lastName,email,phone,password);
            session.persist(user);
        }
        transaction.commit();
        session.close();
        return returnStatus;

    }

}
