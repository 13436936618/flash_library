package com.bj.controller;

import com.bj.pojo.RealImage;
import com.bj.service.ImageService;
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
@RequestMapping("/image")
public class ImageController {
    @Autowired
    private ImageService imageService;


    @RequestMapping("/input/{id}")
    public String input(@PathVariable("id")Integer id, RealImage image, MultipartFile file , ModelMap map){
        try{
            image.setSid(id);
            String filePath = "D:\\repository\\image_location";
            String originalFilename = file.getOriginalFilename();
            String newFileName = UUID.randomUUID() + originalFilename;
            File targetFile = new File(filePath, newFileName);
            file.transferTo(targetFile);

            image.setId(new Random().nextInt());
            image.setImage(newFileName);
            image.setInputdate(new Date());
            imageService.save(file, image, map);
            return "redirect:/jsp/image_index.jsp";
        }catch(IOException e){
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/selectimage/{sid}")
    public String selectimage(@PathVariable("sid")int sid, Model model){
        List<RealImage> imageList = imageService.selectimage(sid);
        if (imageList!=null) {
            model.addAttribute("image", imageList);
            return "image_index";
        }else{
            return null;
        }
    }

    @RequestMapping("/delete/{id}&{sid}")
    public String deleteimage(@PathVariable("id")int id,@PathVariable("sid")int sid,Model model){
        imageService.deleteimage(id);
        List<RealImage> imageList = imageService.selectimage(sid);
        model.addAttribute("image", imageList);
        return "image_index";
    }

    @RequestMapping("/listImages/{id}&{sid}")
    public String list(Model model,@PathVariable("id")int id,@PathVariable("sid")int sid) {
        List<RealImage> lists = imageService.list(id);
        List<RealImage> realImageList = imageService.selectall(sid);
        model.addAttribute("image",realImageList);
        model.addAttribute("lists", lists);
        return "image_index";
    }
}
