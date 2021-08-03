package dev.ronaldomarques.focopdv.weblayoutvalidator.filter;


import java.io.IOException;
//import java.sql.Connection;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;




@WebFilter(urlPatterns = {"/*"})
public class AllFilter implements javax.servlet.Filter {
	// private static Connection conn;
	
	
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
		// if (conn == null) { conn = SingleConnection.getConnection(); }
		
	}
	
	
	
	@Override
	public void doFilter(ServletRequest sReq, ServletResponse sRes, FilterChain fChain)
			throws IOException, ServletException {
		
		try {
			fChain.doFilter(sReq, sRes);
			
			/* if ((conn == null) || (conn.isClosed())) { conn = SingleConnection.getConnection(); }
			 * conn.commit(); */
		}
		catch (Exception excep1) {
			excep1.printStackTrace();
			
			try {
				//conn.rollback();
			}
			catch (Exception excep2) {
				excep2.printStackTrace();
			}
			
		}
		
	}
}
