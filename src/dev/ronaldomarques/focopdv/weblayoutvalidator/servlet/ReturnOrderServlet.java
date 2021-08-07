package dev.ronaldomarques.focopdv.weblayoutvalidator.servlet;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;



@WebServlet("/ReturnOrderServlet")
@MultipartConfig
public class ReturnOrderServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	
	/* Constructor. */
	public ReturnOrderServlet() {
		
		super();
		
	}
	//
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
		
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// FIXME: ORGANIZAR ARQUITETURA DESTA CONSTANTE.
		final int LONGEST_TUPLA = 11;
		
		var fileName = new String();
		var fileContentType = new String();
		int fileNumberOfLines = 0;
		var fileTextualContent = new String();
		String[] lines = new String[LONGEST_TUPLA];
		String[] tokens = new String[LONGEST_TUPLA];
		
		
		/* Init RequestDispatcher before loop or try-catch-blocks, init once, use several. */
		RequestDispatcher reqDisp = null;
		
		/* Select and execute the procedures, in fact. */
		switch (request.getParameter("action")) {
			case "validate":
				request.setAttribute("lastAction", "validate");
				
				// Get the text file on page field(parameter/part) to be validated.
				if ((request.getPart("textFileUpload") != null) && ServletFileUpload.isMultipartContent(request)) {
					Part textfilePart = request.getPart("textFileUpload");
					fileName = textfilePart.getSubmittedFileName();
					fileContentType = request.getPart("textFileUpload").getContentType();
					
					try {
						InputStream inputStream = textfilePart.getInputStream();
						InputStreamReader inputSreamReader = new InputStreamReader(inputStream);
						BufferedReader buffReader = new BufferedReader(inputSreamReader);
						String tmpLine = buffReader.readLine();
						String finalString = "";
						
						while (tmpLine != null) {
							++fileNumberOfLines;
							finalString += tmpLine + "\n";
							tmpLine = buffReader.readLine();
						}
						
						fileTextualContent = finalString.substring(0, finalString.length() - 1);
						lines = fileTextualContent.split("\n");
						
						for (int i = 0; i <= LONGEST_TUPLA; i++) {
						tokens[i] = lines[i].split(";");
						}
						
						
						// FIXME: TODO: PAREI AKI  ACIMA  LAÇO PARA TEXTO TO LINES X TOKENS
						
						int tkCounter = 0;
						
						for (String t : tokens) { System.out.println(tkCounter++ + "]" + t + "["); }
						
					}
					catch (IOException excep) {
						System.out.println("Error: inputStream = userPicturePart.getInputStream();");
						excep.printStackTrace();
					}
					
					/* ByteArrayOutputStream bAOS;
					 * bAOS = new ByteArrayOutputStream();
					 * int readByte;
					 * 
					 * while ((readByte = inputStream.read()) != -1) { bAOS.write(readByte); }
					 * 
					 * fileTextualContent = bAOS.toString(); */
				}
				break;
			
			default: // By default whatever else value from 'request.getParameter("action")' we must do nothing.
				request.setAttribute("lastAction", "default");
				fileName = "default case / no file";
				break;
		}
		
		reqDisp = request
				.getRequestDispatcher("/returnOrder.jsp?filename=" + fileName
						+ "&filecontenttype=" + fileContentType
						+ "&filenumberoflines=" + fileNumberOfLines
						+ "&filetextualcontent=" + fileTextualContent);
		reqDisp.forward(request, response);
		
	}
	
}
