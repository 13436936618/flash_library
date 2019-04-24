package com.bj.service;

import com.bj.mapper.ImageMapper;
import com.bj.mapper.VideoMapper;
import com.bj.pojo.RealImage;
import com.bj.pojo.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service("videoService")
public class VideoServiceImpl implements VideoService {
    @Autowired
    private VideoMapper videoMapper;

    @Override
    public void save(MultipartFile file, Video video, ModelMap map) throws IOException {
        videoMapper.save(video);
    }

    @Override
    public List<Video> selectvideo(int id) {
        return videoMapper.selectvideo(id);
    }

    @Override
    public void deletevideo(int sid) {
        videoMapper.deletevideo(sid);
    }

    @Override
    public List<Video> list(int id) {
        return videoMapper.list(id);
    }

    @Override
    public List<Video> selectall(int sid) {
        return videoMapper.selectall(sid);
    }
}
