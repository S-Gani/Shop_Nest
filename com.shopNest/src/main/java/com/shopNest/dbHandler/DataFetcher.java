package com.shopNest.dbHandler;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.shopNest.product.Product;

public class DataFetcher {

	@SuppressWarnings("finally")
	public static String fetch(String uname) {
		// TODO Auto-generated method stub
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT pass FROM customers WHERE uname=?";
		String dbPass="";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ResultSet rs=ps.executeQuery();
			rs.next();
			dbPass=rs.getString(1);
		}catch(Exception ex) {
			System.out.print("something raised at fetcher class");
			ex.printStackTrace();
		}
		return dbPass;
		}
	@SuppressWarnings("rawtypes")
	public static List fetchUsersInfo() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT uname,mail,gender,address FROM customers";
		List<String> ulist=new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}catch(Exception e) {
			System.out.println("problem in login");
		}
		return ulist;
		
	}
	@SuppressWarnings("rawtypes")
	public static List fetchProductsInfo() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT pid,pname,pdesc,pprice,pimg FROM products";
		List<String> llist=new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				llist.add(temp);
			}
		}catch(Exception e) {
			System.out.println("problem in login");
		}
		return llist;
		
	}
	public static Product getProductById(int pid) {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="system";
		String sql="SELECT pname,pprice FROM pid=?";
		Product p=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,pid);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String pname=rs.getString(1);
			int pprice=rs.getInt(2);
			
			p=new Product(pid,pname,pprice);
		}catch(Exception e) {
			System.out.println("problem in fecthing product");
		}
		finally {
			return p;
		}
	}

}
