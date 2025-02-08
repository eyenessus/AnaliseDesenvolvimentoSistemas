package berry.services;

public class DashboardService {
    private LoginService loginService;
    private UserService userService;
    private AddressService addressService;
    private OrderService orderService;
    private NotificationService notificationService;

    public DashboardService() {
        System.out.println("Dashboard data");
    }

    public String[] getItems(){
        return new String[]{"Item 1", "Item 2", "Item 3"};
    }
}
