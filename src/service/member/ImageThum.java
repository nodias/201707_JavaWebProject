package service.member;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.MovieR_ActionSS;

public class ImageThum implements MovieR_ActionSS {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	HttpSession session = request.getSession();
	System.out.println("ImageThum");
	PrintWriter out = response.getWriter();
	String imagePath = request.getSession().getServletContext().getRealPath("img");
	System.out.println(imagePath);
	int size = 1 * 1024 * 1024;
	String filename = "";
	try {
	    MultipartRequest multipartRequest = new MultipartRequest(request, imagePath, size, "UTF-8",
		    new DefaultFileRenamePolicy());
	    Enumeration<?> enumeration = multipartRequest.getFileNames();
	    String file = (String) enumeration.nextElement();
	    filename = multipartRequest.getFilesystemName(file);
	} catch (Exception e) {
	    e.printStackTrace();
	}
	ParameterBlock parameterBlock = new ParameterBlock();
	parameterBlock.add(imagePath + "\\" + filename);
	RenderedOp renderedOp = JAI.create("fileload", parameterBlock);
	BufferedImage bufferedImage = renderedOp.getAsBufferedImage();
	BufferedImage bufferedImage2 = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB);
	Graphics2D graphics2d = bufferedImage2.createGraphics();
	graphics2d.drawImage(bufferedImage, 0, 0, 100, 100, null);
	String id =(String)session.getAttribute("id");
	File file = new File(imagePath + "/" + id + ".jpg");
	File file2 = new File(imagePath + "/" + id + "_ajax.jpg");
	ImageIO.write(bufferedImage2, "jpg", file);
	ImageIO.write(bufferedImage2, "jpg", file2);
	System.out.println(filename);
	out.println("-썸네일 이미지-<br><img src=http://localhost:8081/MovieR/img/sm_" + id + ".jpg>");
    }
}