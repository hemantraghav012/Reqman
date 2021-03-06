package com.reqman.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "AuthFilter", urlPatterns = { "*.xhtml" })
public class AuthorizationFilter implements Filter {

	public AuthorizationFilter() {
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		try {

			HttpServletRequest reqt = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			HttpSession ses = reqt.getSession(false);

			String reqURI = reqt.getRequestURI();
			if (reqURI.indexOf("/index.xhtml") >= 0  
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource"))
			{
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/login.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/register.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/eregisters.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/setinformation.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/createroles.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			
			else if(reqURI.indexOf("/userrole.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/registeraddlink.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
                  
			else if(reqURI.indexOf("/forgotpassword.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/forgotpasswordemail.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/price.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/googlesignin.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/accountadminregister.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			
			else if(reqURI.indexOf("/termsandconditions.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/contactus.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/aboutus.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/blogs.xhtml") >=0 
 					|| (ses != null && ses.getAttribute("username") != null)
 					|| reqURI.indexOf("/public/") >= 0
 					|| reqURI.contains("javax.faces.resource")) {
 				chain.doFilter(request, response);
 			}
			else if(reqURI.indexOf("/paytabspaypage.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/paytabspage.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else if(reqURI.indexOf("/paytabspageorg.xhtml") >=0 
					|| (ses != null && ses.getAttribute("username") != null)
					|| reqURI.indexOf("/public/") >= 0
					|| reqURI.contains("javax.faces.resource")) {
				chain.doFilter(request, response);
			}
			else
			{
				resp.sendRedirect(reqt.getContextPath() + "/faces/index.xhtml");
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@Override
	public void destroy() {

	}
}