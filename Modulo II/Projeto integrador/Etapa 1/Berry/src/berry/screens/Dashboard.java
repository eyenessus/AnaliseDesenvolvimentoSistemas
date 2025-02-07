package berry.screens;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class Dashboard extends JFrame{
    public Dashboard(){
        this.setTitle("Dashboard");
        this.setSize(800, 600);
        this.build();

    }

    public void build(){
        JPanel panel = new JPanel(new BorderLayout());

        String[] columns = {"Pedido","Nome","Status"};
        String[][] data = {};

        JTable table = new JTable(data, columns);
        JScrollPane scrollPane = new JScrollPane(table);


        DefaultTableModel model = new DefaultTableModel(columns, 0);
        model.addRow(new Object[]{"1","Pizza de frango","Preparando"});
        table.setModel(model);

        panel.add(scrollPane, BorderLayout.CENTER);
        add(panel);
        this.setVisible(true);

    }
    
 
}
