package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Enumeration;

@WebServlet("/flight")
public class ServletEx extends HttpServlet {
    // 가장 중요한 웹 Req,Rep에 필요한 'HttpServlet'을 자동으로 extends해 주고 있음.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("-- doGet() --");

        String name = request.getParameter("name");
        String identity = request.getParameter("identity");
        String gender = request.getParameter("gender");
        String FlightTo = request.getParameter("FlightTo");
        String FlightFrom = request.getParameter("FlightFrom");
        String[] security = request.getParameterValues("security");

        System.out.println("name : " + name);
        System.out.println("identity : " + identity);
        System.out.println("gender : " + gender);
        System.out.println("FlightTo : " + FlightTo);
        System.out.println("FlightFrom : " + FlightFrom);
        System.out.println("security : " + Arrays.toString(security));

        Enumeration<String> names = request.getParameterNames();
        while (names.hasMoreElements()){
            String log = (String) names.nextElement();
            System.out.println("log : " + log);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("-- doPost() --");
        doGet(request,response);
    }

}
