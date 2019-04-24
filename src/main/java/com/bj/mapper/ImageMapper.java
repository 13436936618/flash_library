package com.bj.mapper;

import com.bj.pojo.RealImage;

import java.util.List;

public interface ImageMapper {
    void save(RealImage image);

    List<RealImage> selectimage(int sid);

    void deleteimage(int id);

    List<RealImage> list(int id);

    List<RealImage> selectall(int sid);
}
