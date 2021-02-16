package views;

import controllers.NhanKhauManagerPanelController;
import javax.swing.JFrame;
import views.NhanKhauManagerFrame.AddNewBabyJFrame;
import views.NhanKhauManagerFrame.AddNewPeopleJFrame;
import views.NhanKhauManagerFrame.DangKyTamTruJFrame;
import views.NhanKhauManagerFrame.DangKyTamVangJFrame;
import views.NhanKhauManagerFrame.KhaiTuJFrame;

/**
 *
 * @author Hai
 */
public class NhanKhauManagePanel extends javax.swing.JPanel {

    /**
     * Creates new form NhanKhauManagePanel
     */
    private NhanKhauManagerPanelController controller = null;
    private JFrame parentJFrame;
    
    public NhanKhauManagePanel(JFrame parentFrame) {
        this.parentJFrame = parentFrame;
        initComponents();
        controller = new NhanKhauManagerPanelController(tablePanel, jtfSearch);
        controller.setParentJFrame(parentJFrame);
        controller.setDataTable();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        tamVangBtn = new javax.swing.JButton();
        tablePanel = new javax.swing.JPanel();
        addNewBtn = new javax.swing.JButton();
        tamTruBtn = new javax.swing.JButton();
        khaiTuBtn = new javax.swing.JButton();
        jtfSearch = new javax.swing.JTextField();
        khaiSinhBtn = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        tamVangBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        tamVangBtn.setText("ĐK tạm vắng");
        tamVangBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tamVangBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout tablePanelLayout = new javax.swing.GroupLayout(tablePanel);
        tablePanel.setLayout(tablePanelLayout);
        tablePanelLayout.setHorizontalGroup(
            tablePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        tablePanelLayout.setVerticalGroup(
            tablePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 389, Short.MAX_VALUE)
        );

        addNewBtn.setBackground(new java.awt.Color(255, 255, 255));
        addNewBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        addNewBtn.setText("Thêm mới");
        addNewBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addNewBtnActionPerformed(evt);
            }
        });

        tamTruBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        tamTruBtn.setText("ĐK tạm trú");
        tamTruBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tamTruBtnActionPerformed(evt);
            }
        });

        khaiTuBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        khaiTuBtn.setText("Khai Tử");
        khaiTuBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                khaiTuBtnActionPerformed(evt);
            }
        });

        jtfSearch.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jtfSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtfSearchActionPerformed(evt);
            }
        });

        khaiSinhBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        khaiSinhBtn.setText("Khai Sinh");
        khaiSinhBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                khaiSinhBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 434, Short.MAX_VALUE))
                    .addComponent(tablePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(addNewBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(tamTruBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(tamVangBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(khaiTuBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(khaiSinhBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(tablePanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(addNewBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(tamVangBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(tamTruBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(khaiTuBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(khaiSinhBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void addNewBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addNewBtnActionPerformed
        AddNewPeopleJFrame addNewPeopleJFrame = new AddNewPeopleJFrame(this.controller, this.parentJFrame);
        addNewPeopleJFrame.setLocationRelativeTo(null);
        addNewPeopleJFrame.setResizable(false);
        addNewPeopleJFrame.setVisible(true);
    }//GEN-LAST:event_addNewBtnActionPerformed

    private void tamVangBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tamVangBtnActionPerformed
        // hien jframe dang ky tam vang
        DangKyTamVangJFrame dangKyTamVangJFrame = new DangKyTamVangJFrame(this.parentJFrame);
        dangKyTamVangJFrame.setLocationRelativeTo(null);
        dangKyTamVangJFrame.setResizable(false);
        dangKyTamVangJFrame.setVisible(true);
    }//GEN-LAST:event_tamVangBtnActionPerformed

    private void tamTruBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tamTruBtnActionPerformed
        DangKyTamTruJFrame dangKyTamTruJFrame = new DangKyTamTruJFrame(this.parentJFrame);
        dangKyTamTruJFrame.setLocationRelativeTo(null);
        dangKyTamTruJFrame.setResizable(false);
        dangKyTamTruJFrame.setVisible(true);
    }//GEN-LAST:event_tamTruBtnActionPerformed

    private void khaiTuBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_khaiTuBtnActionPerformed
        KhaiTuJFrame khaiTuJFrame = new KhaiTuJFrame(this.parentJFrame);
        khaiTuJFrame.setLocationRelativeTo(null);
        khaiTuJFrame.setResizable(false);
        khaiTuJFrame.setVisible(true);
    }//GEN-LAST:event_khaiTuBtnActionPerformed

    private void jtfSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtfSearchActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtfSearchActionPerformed

    private void khaiSinhBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_khaiSinhBtnActionPerformed
        AddNewBabyJFrame addNewBabyJFrame = new AddNewBabyJFrame(this.controller, this.parentJFrame);
        addNewBabyJFrame.setLocationRelativeTo(null);
        addNewBabyJFrame.setResizable(false);
        addNewBabyJFrame.setVisible(true);
    }//GEN-LAST:event_khaiSinhBtnActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addNewBtn;
    private javax.swing.JTextField jtfSearch;
    private javax.swing.JButton khaiSinhBtn;
    private javax.swing.JButton khaiTuBtn;
    private javax.swing.JPanel tablePanel;
    private javax.swing.JButton tamTruBtn;
    private javax.swing.JButton tamVangBtn;
    // End of variables declaration//GEN-END:variables
}