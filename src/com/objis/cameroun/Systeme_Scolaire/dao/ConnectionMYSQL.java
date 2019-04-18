package com.objis.cameroun.Systeme_Scolaire.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author BrandolKuete
 * Cette classe contient les informations necessaires � notre base de donn�es
 *
 */
public class ConnectionMYSQL {
	
	// Information d'acc�s � la base de donn�es
		public static String url = "jdbc:mysql://localhost/bd_systeme_scolaire";
		public static String login = "root";//nom d'utilisateur de la base de donn�es
		public static String passwd = "";//mot de passe
		public static Connection connection;
		
		/**
		 * @return
		 * La m�thode suivante permet de se connecter � la base de donn�es
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
