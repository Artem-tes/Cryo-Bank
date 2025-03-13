package org.webapplication.backend.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "UserData")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer ID;
    @Column
    private String firstName;
    @Column
    private String lastName;
    @Column
    private String email;
    @Column(name = "number")
    private String phone;
    @Column
    private String password;

}
