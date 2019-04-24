package com.bj.controller;

import com.bj.pojo.RealImage;
import com.bj.pojo.Video;
import com.bj.service.ImageService;
import com.bj.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Controller
@RequestMapping("/video")
public class VideoController {
    @Autowired
    private VideoService videoService;


    @RequestMapping("/input/{id}")
    public String input(@PathVariable("id")Integer id, Video video, MultipartFile file , ModelMap map){
        try{
            video.setSid(id);
            String filePath = "D:\\repository\\video_location";
            String originalFilename = file.getOriginalFilename();
            String newFileName = UUID.randomUUID() + originalFilename;
            File targetFile = new File(filePath, newFileName);
            file.transferTo(targetFile);

            video.setId(new Random().nextInt());
            video.setVideo(newFileName);
            video.setInputdate(new Date());
            videoService.save(file, video, map);
            return "redirect:/jsp/video_index.jsp";
        }catch(IOException e){
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/selectvideo/{sid}")
    public String selectvideo(@PathVariable("sid")int sid, Model model){
        List<Video> videoList = videoService.selectvideo(sid);
        if (videoList!=null) {
            model.addAttribute("video", videoList);
            return "video_index";
        }else{
            return null;
        }
    }

    @RequestMapping("/delete/{id}&{sid}")
    public String deletevideo(@PathVariable("id")int id,@PathVariable("sid")int sid,Model model){
        videoService.deletevideo(id);
        List<Video> videoList = videoService.selectvideo(sid);
        model.addAttribute("video", videoList);
        return "video_index";
    }

    @RequestMapping("/listVideos/{id}&{sid}")
    public String list(Model model,@PathVariable("id")int id,@PathVariable("sid")int sid) {
        List<Video> lists = videoService.list(id);
        List<Video> realImageList = videoService.selectall(sid);
        model.addAttribute("video",realImageList);
        model.addAttribute("lists", lists);
        return "video_index";
    }
}
