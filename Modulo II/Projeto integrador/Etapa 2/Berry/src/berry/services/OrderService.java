package berry.services;

import berry.repositories.OrderRepository;

public class OrderService {
    private OrderRepository orderRepository;

    public String[] getOrders() {
        return orderRepository.getOrders();
    }
}
