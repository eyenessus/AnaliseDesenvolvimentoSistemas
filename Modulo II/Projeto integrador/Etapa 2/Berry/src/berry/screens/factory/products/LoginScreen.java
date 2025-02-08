package berry.screens.factory.products;

import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import berry.interfaces.Screen;
import berry.services.LoginService;

public class LoginScreen extends JFrame implements Screen {
    private LoginService serviceLogin;

    public LoginScreen(String title) {
        this.serviceLogin = new LoginService();
        this.setTitle(title);
        this.setSize(800, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.build();
    }

    public void build() {
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
            if(e.getSource() == login){
                String user = usernameField.getText();
                String pass = passwordField.getText();

                if(serviceLogin.login(user, pass)){
                    System.out.println("Logado com sucesso");
                }else{
                    System.out.println("Usuário ou senha inválidos");
                }
            }
        });
    }
}
