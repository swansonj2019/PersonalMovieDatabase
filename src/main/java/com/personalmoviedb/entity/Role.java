package com.personalmoviedb.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Objects;

/**
 * Class to represent a User Role
 *
 * @author Jswanson
 */
@Entity(name = "Role")
@Table(name = "user_roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    @Column(name = "id")
    private int id;

    @Column(name = "username")
    private String username;

    @Column(name = "role_name")
    private String role_name;

    /**
     * Instantiates a new role
     */
    public Role() {
    }

    /**
     * Instantiates a new user role
     *
     * @param username the username
     * @param role_name the role_name
     */
    public Role(String username, String role_name) {
        this.username = username;
        this.role_name = role_name;
    }

    /**
     * Gets user id.
     *
     * @return the user id
     */
    public int getId() {
        return id;
    }

    /**
     * Sets user id.
     *
     * @param id the user id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Gets username.
     *
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets username.
     *
     * @param username the username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * Gets the user_role
     *
     * @return the user_role
     */
    public String getRoleName() {
        return role_name;
    }

    /**
     * Sets the roll name
     *
     * @param role_name the roll name
     */
    public void setRoleName(String role_name) {
        this.role_name = role_name;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", role_name='" + role_name + '\'' +
                '}';
    }
}

