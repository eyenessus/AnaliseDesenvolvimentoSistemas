package berry.screens.factory;


import berry.interfaces.Screen;
import berry.screens.factory.products.SignUpScreen;

public class FactoryScreen {
    public Screen getScreenLogin(String title) {
        return new SignUpScreen(title);
    }

    public Screen getScreenSignUp(String title) {
        return new SignUpScreen(title);
    }

    public Screen getDashboard(String title) {
        return new SignUpScreen(title);
    }
}
