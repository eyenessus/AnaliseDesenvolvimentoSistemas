package berry.screens.factory.products;

import javax.swing.JFrame;

import berry.interfaces.Screen;

public class SignUpScreen extends JFrame implements Screen{

    public SignUpScreen(String title) {
        this.setTitle(title);
        this.setSize(800, 600);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.build();
    }

    @Override
    public void build() {
        throw new UnsupportedOperationException("Unimplemented method 'build'");
    }
    
}
