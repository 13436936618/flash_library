package com.bj.service;

import com.bj.mapper.MusicMapper;
import com.bj.pojo.Music;
import com.bj.pojo.RealImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service("musicService")
public class MusicServiceImpl implements MusicService{
    @Autowired
    private MusicMapper musicMapper;

    @Override
    public void save(MultipartFile file, Music music, ModelMap map) throws IOException {
        musicMapper.save(music);
    }

    @Override
    public List<Music> selectmusic(int id) {
        return musicMapper.selectmusic(id);
    }

    @Override
    public List<Music> list(int id) {
        return musicMapper.list(id);
    }

    @Override
    public List<Music> selectall(int sid) {
        return musicMapper.selectall(sid);
    }

}
