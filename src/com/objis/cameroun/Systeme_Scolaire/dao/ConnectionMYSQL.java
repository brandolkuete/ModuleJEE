package com.objis.cameroun.Systeme_Scolaire.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author BrandolKuete
 * Cette classe contient les informations necessaires à notre base de données
 *
 */
public class ConnectionMYSQL {
	
	// Information d'accès à la base de données
		public static String url = "jdbc:mysql://localhost/bd_systeme_scolaire";
		public static String login = "root";//nom d'utilisateur de la base de données
		public static String passwd = "";//mot de passe
		public static Connection connection;
		
		/**
		 * @return
		 * La méthode suivante permet de se connecter à la base de données
		 */
		public static Connection getInstance() {
			
			if (connection==null) {
				
				try {
					//charger en cash du serveur tomcat le chemin du driver de la librairie mysq-lconnector-java
					Class.forName("com.mysql.jdbc.Driver");
					
				
					connection = DriverManager.getConnection(url,login,passwd);
					
				}catch (Exception e) {
					
					System.out.println();
					e.printStackTrace();
					
					
				}
				
			}
			
			return connection;
			
		}
}
