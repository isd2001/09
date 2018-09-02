package handlers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class SessionSupport implements HttpSessionAttributeListener{
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		
		String name = se.getName();
		HttpSession session=se.getSession();
		if(name.equals("game")) {
			String value = (String)se.getValue();
			session.setAttribute("cnt", 1);
			session.setAttribute("tar", 1);
			switch(value) {
				case "updown":
					session.setAttribute("min", 1);
					session.setAttribute("cnt", 200);
					break;
				case "base":
					session.setAttribute("log", new ArrayList<>());
			}
		}
		
		
	}
	
	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		
		
		
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		
		
		
	}

}
