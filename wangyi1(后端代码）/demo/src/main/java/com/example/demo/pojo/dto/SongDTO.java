//Spring Data JPA 无法自动将原生 SQL 查询结果转换为自定义 DTO 类型

package com.example.demo.pojo.dto;

import jakarta.persistence.Column;

import java.beans.ConstructorProperties;

public class SongDTO {

    private Integer songid;
    @Column(nullable = false)
    private String songname;
    @Column(nullable = false)
    private String songImg;
    @Column(nullable = false)
    private String artistname;
    @Column(nullable = false)
    private String albumname;

    private String source;
    private Integer listenTimes;

    public SongDTO(){}

    @ConstructorProperties({"songid","songname", "song_img", "artistname", "albumname","source","listen_times"})
    public SongDTO(Integer songid,String songname, String song_img, String artistname, String albumname,String source,Integer listenTimes){
        this.songid = songid;
        this.songname = songname;
        this.songImg = song_img;
        this.artistname = artistname;
        this.albumname = albumname;
        this.source = source;
        this.listenTimes=listenTimes;


    }

    public Integer getSongid() {
        return songid;
    }
    public void setSongid(Integer songid) {
        this.songid=songid;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
    }

    public String getSongImg() {
        return songImg;
    }

    public void setSongImg(String songImg) {
        this.songImg = songImg;
    }

    public String getArtistname() {
        return artistname;
    }

    public void setArtistname(String artistname) {
        this.artistname = artistname;
    }

    public String getAlbumname() {
        return albumname;
    }

    public void setAlbumname(String albumname) {
        this.albumname = albumname;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Integer getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(Integer listenTimes) {
        this.listenTimes = listenTimes;
    }
}
