package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.StudentDAO;
import com.pojo.Student;

@WebServlet("/list")
public class ListStudentsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        StudentDAO dao = new StudentDAO();
        List<Student> students = dao.getAllStudents();

        request.setAttribute("students", students);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}