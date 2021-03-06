/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package views;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import net.proteanit.sql.DbUtils;
import services.MysqlConnection;

/**
 *
 * @author CONG_CHINH
 */
public class QuanLySinhHoat extends javax.swing.JFrame {

    /**
     * Creates new form QuanLySinhHoat
     */
    public QuanLySinhHoat() {
        initComponents();
         try {
            initComponents();
            chudehop();
            ho();
            loadidChuHo();
        } catch (SQLException ex) {
            Logger.getLogger(QuanLySinhHoat.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(QuanLySinhHoat.class.getName()).log(Level.SEVERE, null, ex);
        }
        load();
    }
    public void load(){
        try { 
//            Connection conn = DriverManager.getConnection(connectionUrl, userName, password);
            Connection conn =  MysqlConnection.getMysqlConnection();
//            String sql = "SELECT tp.id,sl.hoTen,`qty`,`thuPhi`,`dongGop` FROM `thu_phi` as tp, (SELECT ID, hoTen FROM nhan_khau) as sl WHERE sl.ID = tp.chuho ";
            String sql = "SELECT * FROM `quanly_sinhhoat`";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String ID = String.valueOf(rs.getInt("id"));
                String chuHo = rs.getString("chuHo");
                String chuDe = rs.getString("chuDe");
                String ngayDu = rs.getString("ngayDu");
                String tinhTrang = rs.getString("tinhTrang");
                
                String tbData[] = {ID, chuHo, chuDe,ngayDu,tinhTrang};
                DefaultTableModel tblModel = (DefaultTableModel)tbList2.getModel();
                tblModel.addRow(tbData);
                tbList2.setModel(DbUtils.resultSetToTableModel(rs));                
            }
        } catch (Exception e) {
        }
    }
     public void chudehop() throws SQLException, ClassNotFoundException{
        try {
            Connection conn = MysqlConnection.getMysqlConnection();
            String sql = "select * from lich_hop";
            PreparedStatement pr = conn.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                chu_de.addItem(rs.getString(2));
                ngay_hop.addItem(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    }
     public void ho() throws SQLException, ClassNotFoundException{
        try {
            Connection conn = MysqlConnection.getMysqlConnection();
        String sql = "SELECT hoTen FROM nhan_khau ,(SELECT idChuHo FROM `ho_khau`) as ch WHERE nhan_khau.ID = ch.idChuHo";
            PreparedStatement pr = conn.prepareStatement(sql);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                ho1.addItem(rs.getString(1));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
     public void loadidChuHo() throws SQLException, ClassNotFoundException{
    try {
        Connection conn = MysqlConnection.getMysqlConnection();
        String sql = "SELECT hoTen FROM nhan_khau ,(SELECT idChuHo FROM `ho_khau`) as ch WHERE nhan_khau.ID = ch.idChuHo";
    PreparedStatement pr = conn.prepareStatement(sql);
    ResultSet rs = pr.executeQuery();
        while(rs.next()){
            idchuho1.addItem(rs.getString(1));
            
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    
}

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        chu_de = new javax.swing.JComboBox<>();
        add = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbList2 = new javax.swing.JTable();
        ho1 = new javax.swing.JComboBox<>();
        idchuho1 = new javax.swing.JComboBox<>();
        jButton33 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        tinh_trang = new javax.swing.JComboBox<>();
        ngay_hop = new javax.swing.JComboBox<>();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Chủ hộ:");

        jLabel2.setText("Lịch sinh hoạt:");

        jLabel3.setText("Tình trạng tham gia:");

        chu_de.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "" }));
        chu_de.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chu_deActionPerformed(evt);
            }
        });

        add.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        add.setText("Thêm");
        add.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addActionPerformed(evt);
            }
        });

        tbList2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Chủ Hộ", "Lịch Sinh Hoạt", "Tình Trạng"
            }
        ));
        jScrollPane1.setViewportView(tbList2);

        ho1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ho1ActionPerformed(evt);
            }
        });

        idchuho1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                idchuho1ActionPerformed(evt);
            }
        });

        jButton33.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton33.setText("Search");
        jButton33.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton33ActionPerformed(evt);
            }
        });

        jButton4.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton4.setText("Xem");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        tinh_trang.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Đã Tham Gia", "Vắng", "Lý do khác", " " }));
        tinh_trang.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tinh_trangActionPerformed(evt);
            }
        });

        ngay_hop.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "" }));
        ngay_hop.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ngay_hopActionPerformed(evt);
            }
        });

        jLabel4.setText("Ngày họp:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(jLabel3)
                                .addComponent(jLabel2)
                                .addComponent(jLabel1))
                            .addComponent(jLabel4))
                        .addGap(58, 58, 58)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(chu_de, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(tinh_trang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(ngay_hop, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(add))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(ho1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(idchuho1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jButton33, javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jButton4, javax.swing.GroupLayout.Alignment.TRAILING)))))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 548, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 36, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(ho1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton33)
                    .addComponent(idchuho1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(chu_de, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(tinh_trang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ngay_hop, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4)
                    .addComponent(jButton4)
                    .addComponent(add))
                .addGap(27, 27, 27)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 245, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(63, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
                                             
    private void addActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addActionPerformed
        try {
            String chuho = this.ho1.getSelectedItem().toString();
            String chude = this.chu_de.getSelectedItem().toString();
            String tinhtrang = this.tinh_trang.getSelectedItem().toString();
            String ngayhop = this.ngay_hop.getSelectedItem().toString();
            String query = "INSERT INTO `quanly_sinhhoat` (`chuHo`, `chuDe`, `tinhTrang`,ngayDu) values (?,?,?,?)";
            Connection conn = MysqlConnection.getMysqlConnection();
            
            PreparedStatement pr = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            ResultSet rs = pr.getGeneratedKeys();
            pr.setString(1, chuho);
            pr.setString(2, chude);
            pr.setString(3, tinhtrang);
            pr.setString(4, ngayhop);
            
            int k = pr.executeUpdate();
            if (k==1){
                JOptionPane.showMessageDialog(this, "Đã thêm chủ hộ tham gia");
                //                txtThuPhi.setText("");
            }else{
                JOptionPane.showMessageDialog(this, "Failed");
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuanLySinhHoat.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(QuanLySinhHoat.class.getName()).log(Level.SEVERE, null, ex);
        }
        load();
    }//GEN-LAST:event_addActionPerformed

    private void ho1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ho1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ho1ActionPerformed

    private void chu_deActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chu_deActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_chu_deActionPerformed

    private void idchuho1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_idchuho1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_idchuho1ActionPerformed

    private void jButton33ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton33ActionPerformed
        // TODO add your handling code here:
        String id = idchuho1.getSelectedItem().toString();
        try {
            Connection conn = MysqlConnection.getMysqlConnection();
            String sql = "select * from thu_phi where id= ?";
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setString(1, id);
            ResultSet rs = pr.executeQuery();
            if (rs.next() == true) {
                ho1.setSelectedItem(rs.getString(2));
               
                //                  txtThuPhi.setText(rs.getString(4));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_jButton33ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
      load();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void tinh_trangActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tinh_trangActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tinh_trangActionPerformed

    private void ngay_hopActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ngay_hopActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ngay_hopActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(QuanLySinhHoat.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QuanLySinhHoat.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QuanLySinhHoat.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QuanLySinhHoat.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new QuanLySinhHoat().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton add;
    private javax.swing.JComboBox<String> chu_de;
    private javax.swing.JComboBox<String> ho1;
    private javax.swing.JComboBox<String> idchuho1;
    private javax.swing.JButton jButton33;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JComboBox<String> ngay_hop;
    private javax.swing.JTable tbList2;
    private javax.swing.JComboBox<String> tinh_trang;
    // End of variables declaration//GEN-END:variables
}
