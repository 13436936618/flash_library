package com.bj.mapper;

import com.bj.pojo.RealImage;
import com.bj.pojo.Video;

import java.util.List;

public interface VideoMapper {
    void save(Video video);

    List<Video> selectvideo(int sid);

    void deletevideo(int id);

    List<Video> list(int id);

    List<Video> selectall(int sid);
}
