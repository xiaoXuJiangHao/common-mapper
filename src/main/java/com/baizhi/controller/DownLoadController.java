package com.baizhi.controller;
import java.util.List;
import java.util.UUID;
import com.baizhi.entity.Chapter;
import com.baizhi.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

@RestController
@RequestMapping("/download")
public class DownLoadController {

    @Autowired
    private ChapterService cs;

    //文件下载
    @RequestMapping("/download.do")
    public String downLoad(String url, HttpSession session, HttpServletResponse response) throws IOException {
        System.out.println(url);
        //动态获取文件保存路径
        String realPath = session.getServletContext().getRealPath("/upload");
        //获取文件
        File file = new File(realPath, url);
        //根据文件设置相应类型
            //①获取文件后缀名
            int i = url.lastIndexOf(".");
            String substring = url.substring(i);
            //②设置相应类型
            response.setContentType(session.getServletContext().getMimeType(substring));
        //设置响应头，实现附件形式下载文件（告知浏览器，需要以附件形式）
        response.setHeader("content-disposition", "attachment;filename="+ URLEncoder.encode(url, "UTF-8"));
        //输入流读取所有字节,输出流将所有读取到的字节取出
        FileInputStream inputStream = new FileInputStream(file);
        FileCopyUtils.copy(inputStream, response.getOutputStream());
        return null;
    }

    //文件上传
    @RequestMapping("/insertChapter.do")
    public String insertChapter(Chapter chapter, MultipartFile chapFile, HttpServletRequest request, HttpSession session) throws Exception{
        System.out.println(chapter);
        String uuid = UUID.randomUUID().toString().replace("-", "");
        chapter.setId(uuid);
        //Date date = new Date();
        //chapter.setCreateTime(date);
        //动态获取文件保存路径
        String realPath = request.getSession().getServletContext().getRealPath("/upload");
        //得到文件名称
        String filename = chapFile.getOriginalFilename();
        File file = new File(realPath);
        if(!file.exists()){
            file.mkdir();
        }
        chapFile.transferTo(new File(realPath,filename));
        chapter.setUrl(filename);
        cs.insertFile(chapter);
        System.out.println("22222222222222222222222222222222222222222222--"+chapter);
        return "ok";
    }

    @RequestMapping("/queryAll.do")
    public List<Chapter> queryAll(HttpSession session){
        List<Chapter> chapters = cs.queryAll();
        session.setAttribute("chapters",chapters);
        return chapters;
    }
}
