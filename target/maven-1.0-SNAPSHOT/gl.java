package com.ghb.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class gl
 */
@WebFilter("/*")
public class gl implements Filter {

    /**
     * Default constructor. 
     */
    public gl() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		//拦截
		HttpServletRequest req=(HttpServletRequest) request;
		String url=req.getRequestURL().toString();
		HttpSession session=req.getSession();
		Object obj=session.getAttribute("uname");
		
		//判断放行条件
		if(url.endsWith(".jsp")||url.contains("/eg")||url.endsWith(".css")
				||url.contains(".js")||url.endsWith(".png")||url.contains(".jpg")||
				url.contains(".gif")||url.contains("/sp")||url.contains("/zl")
				||url.contains("/VerifyCodeServlet")||url.contains("/dl")||url.contains("/zc")
				||url.contains("/Ajax")) 
		{
			chain.doFilter(request,response);
		}else
		{
			//其余的数值拦截
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script>alert('请先登录');location.href='mian/Back/ht/dl/ht.jsp';</script>");
			out.flush();
			out.close();
			return;
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
