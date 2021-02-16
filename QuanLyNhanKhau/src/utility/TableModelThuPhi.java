/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utility;

import Bean.HoKhauBean;
import Bean.MemOfFamily;
import models.HoKhauModel;
import java.util.List;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author Quan_Nguyen
 */
public class TableModelThuPhi {
    public DefaultTableModel setTableThuPhi(List<HoKhauBean> listItem, String[] listColumn) {
     final int columns = listColumn.length;
     DefaultTableModel dtm = new DefaultTableModel()  {
            @Override
            public boolean isCellEditable(int row, int column) {
                return super.isCellEditable(row, column); //To change body of generated methods, choose Tools | Templates.
            }
            @Override
            public Class<?> getColumnClass(int columnIndex) {
                return columnIndex == 5 ? Boolean.class : String.class;
            }
        };
     dtm.setColumnIdentifiers(listColumn);
     Object[] obj;
     obj = new Object[columns];
        listItem.forEach((HoKhauBean item) -> {  
            obj[0] = item.getHoKhauModel().getID();
            obj[1] = item.getHoKhauModel().getSnk();
            obj[2] = item.getHoKhauModel().getIdChuHo();
            obj[3] = item.getHoKhauModel().getIdChuHo();
//            obj[3] = item.getNhanKhauModel().getDiaChiHienNay();
//            obj[4] = item.getChungMinhThuModel().getSoCMT();
            dtm.addRow(obj);
        });
        return dtm;     
   }
      public DefaultTableModel setTableMember(List<MemOfFamily> listItem, String[] listColumn) {
        final int columns = listColumn.length;
        DefaultTableModel dtm = new DefaultTableModel()  {
            @Override
            public boolean isCellEditable(int row, int column) {
                return super.isCellEditable(row, column); //To change body of generated methods, choose Tools | Templates.
            }
            @Override
            public Class<?> getColumnClass(int columnIndex) {
                return columnIndex == 3 ? Boolean.class : String.class;
            }
        };
        dtm.setColumnIdentifiers(listColumn);
        Object[] obj;
        obj = new Object[columns];
        listItem.forEach((MemOfFamily item) -> {  
            obj[0] = item.getNhanKhau().getNhanKhauModel().getHoTen();
            obj[1] = item.getNhanKhau().getNhanKhauModel().getNamSinh();
            obj[2] = item.getThanhVienCuaHoModel().getQuanHeVoiChuHo();
            dtm.addRow(obj);
        });
        return dtm;
    }
    
}
