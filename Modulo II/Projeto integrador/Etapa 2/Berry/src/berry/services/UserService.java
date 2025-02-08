package berry.services;

import berry.model.User;
import berry.repositories.UserRepository;

public class UserService {
    private AddressService addressService;
    private UserRepository userRepository;
    
    public UserService(){
        System.out.println("UserService created");
    }

    public User getUserById(String id){
        return userRepository.getUser(id);
    }
}
