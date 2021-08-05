package dev.ronaldomarques.focopdv.weblayoutvalidator.servlet;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;



@WebServlet("/SendingOrderServlet")
@MultipartConfig
public class SendingOrderServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	
	/* Constructor. */
	public SendingOrderServlet() {
		
		super();
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
		
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		var fileName = new String();
		var fileContentType = new String();
		int fileNumberOfLines = 0;
		
		/* Init RequestDispatcher before loop or try-catch-blocks, init once, use several. */
		RequestDispatcher reqDisp = null;
		
		/* Select and execute the procedures, in fact. */
		switch (request.getParameter("action")) {
			case "validate":
				request.setAttribute("lastAction", "validate");
				
				// FIXME: BLOCO TEMPORARIO SÓ PARA ENTREGAR A ESTRUTURA DA PÁGINA.
				
				// Get the text file on page field(parameter/part) to be validated.
				if ((request.getPart("textFileUpload") != null) && ServletFileUpload.isMultipartContent(request))
				fileName = request.getPart("textFileUpload").getSubmittedFileName();
				fileContentType = request.getPart("textFileUpload").getContentType();
				/* JUST A EXAMPLE OF FILE MANIPULATING ! */
				//fileName = "validate case / yes one file";
				fileNumberOfLines = 1;
				
				break;
			
			default: // By default whatever else value from 'request.getParameter("action")' we must do nothing.
				request.setAttribute("lastAction", "default");
				fileName = "default case / no file";
				break;
		}
		
		reqDisp = request.getRequestDispatcher("/sendingOrder.jsp?filename=" + fileName + "&filecontenttype=" + fileContentType +
				"&filenumberoflines=" + fileNumberOfLines);
		reqDisp.forward(request, response);
		
	}
	
}
