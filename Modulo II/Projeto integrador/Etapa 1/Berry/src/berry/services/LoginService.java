package berry.services;

import javax.swing.JOptionPane;
import berry.screens.Dashboard;

public class LoginService {

    public void login(String user, String pass) {
        if (user.equals("admin") && pass.equals("admin")) {
            new Dashboard();
        } else {
            JOptionPane.showMessageDialog(null, "Usuário ou senha inválidos");
        }
    }
}
