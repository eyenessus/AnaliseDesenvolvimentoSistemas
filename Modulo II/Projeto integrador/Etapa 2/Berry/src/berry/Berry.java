/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package berry;

import berry.screens.factory.FactoryScreen;

/**
 *
 * @author emers
 */
public class Berry {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        FactoryScreen factory = new FactoryScreen();
        factory.getScreenLogin("Login");
    }
    
}
