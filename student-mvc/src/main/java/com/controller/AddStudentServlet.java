package com.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.StudentDAO;
import com.pojo.Student;

@WebServlet("/add")   
public class AddStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        int marks = Integer.parseInt(req.getParameter("marks"));
        int age=Integer.parseInt(req.getParameter("age"));

        Student s = new Student();
        s.setName(name);
        s.setMarks(marks);
        s.setAge(age);

        new StudentDAO().save(s);

        res.sendRedirect("index.jsp");
    }
}