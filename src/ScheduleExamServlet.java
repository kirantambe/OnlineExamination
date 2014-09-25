import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/ScheduleExamServlet")
public class ScheduleExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ScheduleExamServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		final String SLIPS_DIRECTORY = "D:/examdata";
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(
						new DiskFileItemFactory()).parseRequest(request);
				int i=0;
				for (FileItem item : multiparts) {
				
					if (!item.isFormField()) {
						i++;
						String name = "Slip"+i+".txt";
							item.write(new File(SLIPS_DIRECTORY
									+ File.separator + name));
					}
					else
					{
						if(item.getFieldName().equals("instructions"))
						{
						String name ="D:/examdata/instructions.txt";
						FileWriter f1 = new FileWriter(name); 
						f1.write(item.getString()); 
						f1.close(); 
						}
					}
				}
				
				//out.println("File uploaded sucessfully");
				response.sendRedirect("successfullupload.html");
			} catch (Exception ex) {
				out.println("File upload Failed");
				out.println(ex);
			}

		} else {
					out.println("Sorry this Servlet only handles file upload request");
		}

	}

}
