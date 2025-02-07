package berry.screens;

import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import berry.services.LoginService;

public class LoginScreen extends JFrame {
    private LoginService serviceLogin;
   public LoginScreen() {
        this.serviceLogin = new LoginService();
        this.setTitle("Login");
        this.setSize(800, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.build();
    }

    public void build(){
        JLabel welcome = new JLabel("Welcome to Berry");
        JLabel username = new JLabel("Usuário");	
        JLabel password = new JLabel("Senha");
        
        JTextField usernameField = new JTextField(20);
        JTextField passwordField = new JTextField(20);

        JButton login = new JButton("Entrar");
        JPanel panel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        
        panel.add(welcome);
        panel.add(username);
        panel.add(usernameField);

        panel.add(password);
        panel.add(passwordField);
        panel.add(login);

        add(panel);
        setVisible(true);

        login.addActionListener(e -> {
            String user = usernameField.getText();
            String pass = passwordField.getText();
            serviceLogin.login(user, pass);
        });
    }
}
