package com.bj.service;

import com.bj.pojo.RealImage;
import com.bj.pojo.Video;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface VideoService {
    void save(MultipartFile file, Video video, ModelMap map) throws IOException;

    List<Video> selectvideo(int sid);

    void deletevideo(int id);

    List<Video> list(int id);

    List<Video> selectall(int sid);
}
