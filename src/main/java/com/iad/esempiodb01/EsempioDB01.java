/*
 */
package com.iad.esempiodb01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author use
 */
public class EsempioDB01 {

    public static void main(String[] args) {
        try {
            // apriamo un canale di comunicazione con il DB (connessione)
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/tbolt",
                    "root",
                    "");

            // creiamo un oggetto in grado di fare query
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM to_do_list");

            while (rs.next()) {
                long id = rs.getLong("id");
                String cod = rs.getString("codice");
                String des = rs.getString("descrizione");
                long bando = rs.getLong("bando_id");
                
                System.out.println("Trovato: id " + id + ", codice " + cod);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
