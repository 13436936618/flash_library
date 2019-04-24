package com.bj.service;

import com.bj.mapper.ImageMapper;
import com.bj.pojo.RealImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service("imageService")
public class ImageServiceImpl implements ImageService{
    @Autowired
    private ImageMapper imageMapper;

    @Override
    public void save(MultipartFile file, RealImage image, ModelMap map) throws IOException {
        imageMapper.save(image);
    }

    @Override
    public List<RealImage> selectimage(int id) {
        return imageMapper.selectimage(id);
    }

    @Override
    public void deleteimage(int sid) {
        imageMapper.deleteimage(sid);
    }

    @Override
    public List<RealImage> list(int id) {
        return imageMapper.list(id);
    }

    @Override
    public List<RealImage> selectall(int sid) {
        return imageMapper.selectall(sid);
    }
}
