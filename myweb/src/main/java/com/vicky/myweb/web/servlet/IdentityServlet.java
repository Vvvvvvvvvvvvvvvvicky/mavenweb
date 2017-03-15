package com.vicky.myweb.web.servlet;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Created by Vicky on 2017/3/9.
 */
public class IdentityServlet extends HttpServlet {

    private static final char[] CHARS = {'2', '3', '4', '5', '6', '7', '8', '9'
            , 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L'
            , 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private Random random = new Random();

    private String getRandomString() {
        StringBuffer buffer = new StringBuffer(6);
        for (int i = 0; i < 6; i++) {
            buffer.append(CHARS[random.nextInt(CHARS.length)]);
        }
        return buffer.toString();
    }

    private Color getRandomColor() {
        return new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255));
    }

    private Color getReverseColor(Color color) {
        return new Color(255 - color.getRed(), 255 - color.getGreen(), 255 - color.getBlue());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("image/jpeg");

        String randomString = this.getRandomString();
        req.getSession().setAttribute("randomString", randomString);

        int width = 100;
        int height = 30;

        Color color = this.getRandomColor();
        Color reverseColor = this.getReverseColor(color);

        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics2D graphics2D = image.createGraphics();
        graphics2D.setFont(new Font("Times New Roman", Font.BOLD, 16));
        graphics2D.setColor(color);
        graphics2D.fillRect(0, 0, width, height);
        graphics2D.setColor(reverseColor);
        graphics2D.drawString(randomString, 18, 20);

        //随机噪音点
        for (int i = 0, n = random.nextInt(100); i < n; i++) {
            graphics2D.drawRect(random.nextInt(width), random.nextInt(height), 1, 1);
        }

        ServletOutputStream outputStream = resp.getOutputStream();
        ImageIO.write(image, "jpeg", outputStream);
        outputStream.flush();
        outputStream.close();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

}
