package berry.services;

import berry.model.Address;
import berry.repositories.AddressRepository;

public class AddressService {
   private AddressRepository addressRepository;

    public AddressService (){
        System.out.println("AddressService created");
    }

    public Address findAddressByCep(String cep){
        return addressRepository.findAddressByCep(cep);
    }
}
