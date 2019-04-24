package com.bj.pojo;

import java.util.List;

public class User {
    private String username;
    private String password;
    private String realname;
    private String birthday;
    private String email;
    private Integer id;

    private List<RealImage> realImageList;
    private List<Music> musicList;
    private List<Video> videoList;

    public List<Music> getMusicList() {
        return musicList;
    }

    public void setMusicList(List<Music> musicList) {
        this.musicList = musicList;
    }

    public List<RealImage> getRealImageList() {
        return realImageList;
    }

    public void setRealImageList(List<RealImage> realImageList) {
        this.realImageList = realImageList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
