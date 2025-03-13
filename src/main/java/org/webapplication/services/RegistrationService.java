package org.webapplication.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.webapplication.repositories.LoginRegRepository;

@Service
public class RegistrationService {

    @Autowired
    @Qualifier("loginRegRepository")
    LoginRegRepository regRepository;

    public String registration(String firstName,
                               String lastName,
                               String email,
                               String phone,
                               String password){
        String returnPage = "WEB-INF/views/mainvews/regviews/completeReg.jsp";
        if(firstName.equals("") || lastName.equals("") || email.equals("") || phone.equals("") || password.equals("")){
            returnPage = "WEB-INF/views/mainvews/errorviews/nullerror.jsp";
        }

        if(regRepository.reg(firstName,lastName,email,phone,password) == 1){
            returnPage = "WEB-INF/views/mainvews/errorviews/identity.jsp";
        }


        return returnPage;
    }

}
