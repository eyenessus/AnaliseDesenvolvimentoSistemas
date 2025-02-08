package berry.repositories;

import berry.model.Address;

public class AddressRepository {
 
    public AddressRepository (){
        System.out.println("AddressRepository created");
    }

    public Address findAddressByCep(String cep){
        return new Address();
    }

    public boolean saveAddress(Address address) {
        return true;
    }
}
