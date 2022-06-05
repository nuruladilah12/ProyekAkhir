/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectpbo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class ModelTamu {
    Connector connector = new Connector ();
    public int getBanyakData(){
        int jmlData = 0;
        try{
             String query = "Select * from data_buku"; 
            connector.statement = connector.koneksi.createStatement();
            ResultSet resultSet = connector.statement.executeQuery(query); //result isinya tabel belum berupa string
            while(resultSet.next()){ //menghitung banyak baris pada database
                jmlData++; 
            }
            connector.statement.close();
        }catch(SQLException e){
            System.out.println(e.getMessage());
            System.out.println("SQL Error");
        }
        return jmlData;
        }
    
    public String [][] readData (){
        try{
            int jmlData = 0; //menampung jumlah data sebanyak jumlah data yang ada, defaultnya
            String data[][] = new String[getBanyakData()][5]; // nemampung array. barisnya isinya di getBanyakData,kolomnya itu atribut
            String query = "Select * from `data_buku`"; 
            connector.statement = connector.koneksi.createStatement();
            ResultSet resultSet = connector.statement.executeQuery(query);// result isinya tabel belum berupa string
            while(resultSet.next()){ //konversi tabel ke string
                data[jmlData][0] = resultSet.getString("judul"); // Harus sesuai database
                data[jmlData][1] = resultSet.getString("pengarang"); // Harus sesuai database
                data[jmlData][2] = resultSet.getString("penerbit"); // Harus sesuai database
                data[jmlData][3] = resultSet.getString("tahun_terbit");
                data[jmlData][4] = resultSet.getString("lokasi");
                jmlData++; //barisnya berpindah terus sampai habis        

        }
            return data;
    }catch(SQLException e){
            System.out.println(e.getMessage());
            System.out.println("SQL Error");
            return null;
        }
    }
}
