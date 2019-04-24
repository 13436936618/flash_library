package com.bj.mapper;

import com.bj.pojo.Music;
import com.bj.pojo.RealImage;

import java.util.List;

public interface MusicMapper {
    void save(Music music);

    List<Music> selectmusic(int sid);

    List<Music> list(int id);

    List<Music> selectall(int sid);
}
