package handlers;

import java.io.IOException;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class LeLieu extends SimpleTagSupport {
	public void doTag() throws JspException,IOException{
		this.getJspContext().getOut().println("Paris");
	}
}
