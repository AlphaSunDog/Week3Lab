
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int first = request.getIntHeader("first");
        int second = request.getIntHeader("second");
        request.setAttribute("first", first);
        request.setAttribute("second", second);
    
        // if the age had not been filled in
        if((first == 0) && (second == 0)){
            request.setAttribute("message", "You must enter a value for first and second.");
            //call the page again so the user can fill the field
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }
        else if (first == 0){
            request.setAttribute("message", "You must enter a value for first.");
            //call the page again so the user can fill the field
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }
        else if (second == 0){
            request.setAttribute("message", "You must enter a value for second.");
            //call the page again so the user can fill the field
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }
        else {
            request.setAttribute("message", "---");
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        }
            
    }
    protected int add(int first, int second){
        int message = first + second;
        return message;
    }
    protected int minus(int first, int second){
        int message = first - second;
        return message;
    }
    protected int multiply(int first, int second){
        int message = first * second;
        return message;
    }
    protected int remainder(int first, int second){
        int message = first % second;
        return message;
    }
}
