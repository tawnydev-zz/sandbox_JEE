package handlers;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class LaDate extends SimpleTagSupport {
	public void doTag() throws JspException,IOException{
		DateFormat df = DateFormat.getDateInstance(DateFormat.FULL,Locale.FRANCE);
		this.getJspContext().getOut().println(df.format(new Date()));
	}
}
