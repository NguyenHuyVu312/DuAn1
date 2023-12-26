/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JDialog.java to edit this template
 */
package UI;

import DAO.NhanVienDAO;
import ENTITY.NhanVien;
import Helper.EmailService;
import Helper.ResetPassword;
import java.awt.Cursor;
import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class QuenMatKhau extends javax.swing.JDialog {
    NhanVienDAO dao = new NhanVienDAO();
    /**
     * Creates new form QuenMatKhau
     */
    public QuenMatKhau(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel4 = new javax.swing.JPanel();
        lblTitle = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        lblUsername = new javax.swing.JLabel();
        txtUsername = new javax.swing.JTextField();
        lblUsername1 = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        btnConfirm = new javax.swing.JButton();
        btnLogin = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("QUÊN MẬT KHẨU");
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setBackground(new java.awt.Color(0, 102, 102));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblTitle.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        lblTitle.setForeground(new java.awt.Color(255, 255, 255));
        lblTitle.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblTitle.setText("Quên mật khẩu");
        jPanel4.add(lblTitle, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 0, 275, 50));

        getContentPane().add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 410, 50));

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lblUsername.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblUsername.setText("Username:");
        jPanel1.add(lblUsername, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 20, -1, 30));

        txtUsername.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtUsernameKeyPressed(evt);
            }
        });
        jPanel1.add(txtUsername, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 20, 250, 30));

        lblUsername1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        lblUsername1.setText("Email:");
        jPanel1.add(lblUsername1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, 50, 30));

        txtEmail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtEmailKeyPressed(evt);
            }
        });
        jPanel1.add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 60, 250, 30));

        btnConfirm.setBackground(new java.awt.Color(255, 255, 255));
        btnConfirm.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnConfirm.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ICON/confirm.png"))); // NOI18N
        btnConfirm.setText("Confirm");
        btnConfirm.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        btnConfirm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConfirmActionPerformed(evt);
            }
        });
        jPanel1.add(btnConfirm, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 110, 120, 40));

        btnLogin.setBackground(new java.awt.Color(255, 255, 255));
        btnLogin.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        btnLogin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ICON/close_40px.png"))); // NOI18N
        btnLogin.setText("Exit");
        btnLogin.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });
        jPanel1.add(btnLogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 110, 100, 40));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 50, 410, 170));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnConfirmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConfirmActionPerformed
        this.confirm();
    }//GEN-LAST:event_btnConfirmActionPerformed

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_btnLoginActionPerformed

    private void txtEmailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtEmailKeyPressed
        // TODO add your handling code here:
        if(evt.getKeyCode() == KeyEvent.VK_ENTER){
            confirm();
        }
    }//GEN-LAST:event_txtEmailKeyPressed

    private void txtUsernameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtUsernameKeyPressed
        // TODO add your handling code here:
        if(evt.getKeyCode() == KeyEvent.VK_ENTER){
            confirm();
        }
    }//GEN-LAST:event_txtUsernameKeyPressed

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
            java.util.logging.Logger.getLogger(QuenMatKhau.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhau.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhau.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhau.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                QuenMatKhau dialog = new QuenMatKhau(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnConfirm;
    private javax.swing.JButton btnLogin;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JLabel lblUsername;
    private javax.swing.JLabel lblUsername1;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtUsername;
    // End of variables declaration//GEN-END:variables
    void confirm() {
        String username = txtUsername.getText();
        String email = txtEmail.getText();
        if (username.isBlank()) {
            JOptionPane.showMessageDialog(this, "Please enter your username!");
            txtUsername.requestFocus();
            return;
        }
        if (email.isBlank()) {
            JOptionPane.showMessageDialog(this, "Please enter your Email!");
            txtEmail.requestFocus();
            return;
        }
//        User user = LoginController.getUser(username);
        NhanVien nv = dao.selectById(username);

        if (nv == null) {
            JOptionPane.showMessageDialog(this, "Username is invalid!");
            txtUsername.requestFocus();
            return;
        } else {
            if (!nv.getEmail().equals(email)) {
                JOptionPane.showMessageDialog(this, "Email is Invalid!");
                txtEmail.requestFocus();
                return;
            } else {
                String code = ResetPassword.createCode();
                dao.updateCode(code, username);
                ResetPassword.userName = username;
                setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        sendCode(email, code);
                    }
                }).start();
            }
        }

    }

    void sendCode(String recieve, String code) {
        try {
            EmailService.sendCode(recieve, code);
            JOptionPane.showMessageDialog(this, "Một mã xác thực đã được gửi tới email của bạn. Vui lòng kiểm tra email.");
            dispose();
            new XacNhanPassword(null, true).setVisible(true);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Gửi mail thất bại");
        }
        setCursor(Cursor.getDefaultCursor());
    }
}
