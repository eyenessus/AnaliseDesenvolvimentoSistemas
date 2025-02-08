package berry.services;

public class LoginService {
    public boolean login(String username, String password) {
        if (username.equals("admin") && password.equals("admin")) {
            return true;
        }
        return false;
    }
    public boolean signUp(Object user) {
        return true;
    }

    public boolean logout() {
        return true;
    }
}
