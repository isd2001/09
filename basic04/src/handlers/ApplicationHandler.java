package handlers;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/*
 * application Event�� Listener2��
 *  - ServletContextListener : init, destroy
 *  
 *  - ServletContextAttributeListener : setAttribute, removeAttribute
 *  	
 *  	�� EventListener�� ����� �ʿ���. (�˾Ƽ� ����
 * 
 */
public class ApplicationHandler implements ServletContextListener {
	long begin;
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("[SERVER] contextInitialized..");
		begin = System.currentTimeMillis();
		/*
		 * �Ű������� �����ִ� ServletContextEvent �� ���ؼ�
		 * application�� �����Ҽ� �ִ�.
		 */
		ServletContext ctx = sce.getServletContext();
		// JSP���� ���Ǵ� application �̶�� �̸��� ��ü.
		int r = (int)(Math.random()*10);
		ctx.setAttribute("r", r);
		ctx.setRequestCharacterEncoding("UTF-8");	// Listener ������ ����
		// Servlet ������������ ���� �޼���
		ctx.setSessionTimeout(1);
		System.out.println("[SERVER] contextInitialized..done");
		
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("contextDestroyed..");
		long end = System.currentTimeMillis();
		System.out.println("running time : "+(end-begin)/1000+" sec");
	}
}
