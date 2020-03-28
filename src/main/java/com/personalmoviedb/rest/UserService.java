package com.personalmoviedb.rest;

import com.personalmoviedb.entity.User;
import com.personalmoviedb.persistence.UserDao;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import java.util.List;



@Path("/user")
public class UserService {
    // The Java method will process HTTP GET requests
    @GET
    // The Java method will produce content identified by the MIME Media type "text/plain"
    @Produces("text/plain")

    public Response getUsers() {
        // Return a simple message
        UserDao dao = new UserDao();
        List<User> list = dao.getAllUsers();

        String output = "User List: " + list;
        return Response.status(200).entity(output).build();
    }

    @GET
    @Path("/{id}")
    @Produces("text/plain")
    public Response getUserByID(@PathParam("id")int id) {
        UserDao dao = new UserDao();
        User user = dao.getById(id);

        String output = "Requested User: " + user;
        return Response.status(200).entity(output).build();
    }

}