package com.bj.service;

import com.bj.pojo.Music;
import com.bj.pojo.RealImage;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface MusicService {
    void save(MultipartFile file, Music music, ModelMap map) throws IOException;

    List<Music> selectmusic(int sid);

    List<Music> list(int id);

    List<Music> selectall(int sid);
}
