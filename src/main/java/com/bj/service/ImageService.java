package com.bj.service;

import com.bj.pojo.RealImage;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public interface ImageService {
    void save(MultipartFile file, RealImage image, ModelMap map) throws IOException;

    List<RealImage> selectimage(int sid);

    void deleteimage(int id);

    List<RealImage> list(int id);

    List<RealImage> selectall(int sid);
}
