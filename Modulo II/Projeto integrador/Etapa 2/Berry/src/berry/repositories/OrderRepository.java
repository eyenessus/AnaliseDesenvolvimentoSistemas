package berry.repositories;

public class OrderRepository {
 
    public OrderRepository(){
        System.out.println("OrderRepository created");
    }

    public boolean saveOrder() {
        return true;
    }

    public String[] getOrders() {
        return new String[] {"order1", "order2"};
    }
}
