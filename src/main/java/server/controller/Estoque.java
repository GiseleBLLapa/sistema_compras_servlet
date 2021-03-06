package server.controller;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
import server.model.Product;
import server.model.ProductDAOImpl;

public class Estoque extends HttpServlet{
    @Override
    public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        try {
            req.setAttribute("products", new ProductDAOImpl().getProducts());
            req.getRequestDispatcher("/static/estoque.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet!");
        }
    }
    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        try {
            req.setCharacterEncoding("UTF-8");
            Product product = new Product();
            product.setName(req.getParameter("name"));
            product.setDescription(req.getParameter("description"));
            product.setCurrency(req.getParameter("currency"));
            product.setPrice(Float.parseFloat(req.getParameter("price")));
            product.setCode(req.getParameter("code"));
            product.setAmount(Integer.parseInt(req.getParameter("amount")));
            product.setUnit(req.getParameter("unit"));
            Product saveProduct = new ProductDAOImpl().saveProduct(product);
            req.setAttribute("products", new ProductDAOImpl().getProducts());
            req.getRequestDispatcher("/static/estoque.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet!");
        }
    }
}