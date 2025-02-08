package berry.repositories;

import berry.model.User;

public class UserRepository {
    public UserRepository(){
        System.out.println("UserRepository created");
    }

    public User getUser(String id) {
        return new User();
    }
}
