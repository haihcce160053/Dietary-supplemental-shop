package com.controller;

import com.daos.AccountDAO;
import com.models.Account;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Tran Quang Qui
 */

public class HomeController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = "";
        Cookie cookie = null;
        Cookie[] cookies = null;
        cookies = request.getCookies();
        AccountDAO daoAcc = new AccountDAO();  // Call method get Account
        Account ac = new Account();   
        if (cookies != null) {  // Check cookies exist
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                // Get cookie in list cookies
                username = cookie.getValue();
                // Get account from cookie
                ac = daoAcc.getAccount(username);
                // Check account 
                if (ac != null) { // If it has in db
                    String type = ac.getAccountTypeId();
                    if (type.equals("AD")) { // If account is admin
                        request.setAttribute("Account", ac);
                        request.getRequestDispatcher("/homeAdmin.jsp").forward(request, response);
                    } else { //If account is customer
                        request.setAttribute("Account", ac);
                        request.getRequestDispatcher("/home.jsp").forward(request, response);
                    }
                } else { // If it hasn't then redirect to home default
                    request.getRequestDispatcher("/home.jsp").forward(request, response);
                }
            }
        } else {
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
