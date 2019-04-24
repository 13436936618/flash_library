package com.bj.controller;

import com.bj.pojo.Music;
import com.bj.pojo.RealImage;
import com.bj.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Controller
@RequestMapping("/music")
public class MusicController {

    @Autowired
    private MusicService musicService;

    @RequestMapping("/input/{id}")
    public String input(@PathVariable("id")Integer id, Music music, MultipartFile file , ModelMap map){
        try{
            music.setSid(id);
            String filePath = "D:\\repository\\music_location";
            String originalFilename = file.getOriginalFilename();
            String newFileName = UUID.randomUUID() + originalFilename;
            File targetFile = new File(filePath, newFileName);
            file.transferTo(targetFile);

            music.setId(new Random().nextInt());
            music.setMusic(newFileName);
            music.setInputdate(new Date());
            musicService.save(file, music, map);
            return "redirect:/jsp/music_index.jsp";
        }catch(IOException e){
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/selectmusic/{sid}")
    public String selectimage(@PathVariable("sid")int sid, Model model){
        List<Music> musicList = musicService.selectmusic(sid);
        if (musicList!=null) {
            model.addAttribute("music", musicList);
            return "music_index";
        }else{
            return null;
        }
    }

    @RequestMapping("/playmusic/{id}&{sid}")
    public String list(Model model,@PathVariable("id")int id,@PathVariable("sid")int sid) {
        List<Music> musicList1 = musicService.list(id);
        List<Music> musicList2 = musicService.selectall(sid);
        model.addAttribute("list",musicList1);
        model.addAttribute("music", musicList2);
        return "music_index";
    }

}
