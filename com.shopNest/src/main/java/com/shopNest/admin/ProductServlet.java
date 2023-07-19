package com.shopNest.admin;
import java.io.IOException;

import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;

import com.shopNest.dbHandler.DataInjector;
@WebServlet("/addp")
public class ProductServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		int pid=Integer.parseInt(req.getParameter("product-id"));
		String pname=req.getParameter("product-name");
		String pdesc=req.getParameter("product-description");
		int pprice=Integer.parseInt(req.getParameter("product-price"));
		String pimg=req.getParameter("product-image");
		DataInjector.addProduct(pid,pname,pdesc,pprice,pimg);
	}

}
