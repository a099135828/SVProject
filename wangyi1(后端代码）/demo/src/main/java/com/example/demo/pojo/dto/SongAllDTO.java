package com.example.demo.pojo.dto;

import jakarta.persistence.Column;

import javax.lang.model.element.NestingKind;
import java.time.LocalDateTime;

public class SongAllDTO {
    private Integer songid;
    private String songname;
    private Integer artistid;
    private Integer albumid;
    private String artistname;
    private String albumname;
    private Integer threeDaysViews;
    private Integer listenTimes;
    private Integer likeNum;
    private String songImg;
    private Integer reviews;
    private String tags;
    @Column(name = "is_original")
    private Boolean original;
    @Column(name = "is_original_singer")
    private Boolean originalSinger;
    @Column(name = "is_vip")
    private Boolean vip;
    private String source;

    public Integer getArtistid() {
        return artistid;
    }

    public void setArtistid(Integer artistid) {
        this.artistid = artistid;
    }

    public Integer getAlbumid() {
        return albumid;
    }

    public void setAlbumid(Integer albumid) {
        this.albumid = albumid;
    }

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
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

    public Integer getThreeDaysViews() {
        return threeDaysViews;
    }

    public void setThreeDaysViews(Integer threeDaysViews) {
        this.threeDaysViews = threeDaysViews;
    }

    public Integer getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(Integer listenTimes) {
        this.listenTimes = listenTimes;
    }

    public Integer getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    public String getSongImg() {
        return songImg;
    }

    public void setSongImg(String songImg) {
        this.songImg = songImg;
    }

    public Integer getReviews() {
        return reviews;
    }

    public void setReviews(Integer reviews) {
        this.reviews = reviews;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Boolean getOriginal() {
        return original;
    }

    public void setOriginal(Boolean original) {
        this.original = original;
    }

    public Boolean getOriginalSinger() {
        return originalSinger;
    }

    public void setOriginalSinger(Boolean originalSinger) {
        this.originalSinger = originalSinger;
    }

    public Boolean getVip() {
        return vip;
    }

    public void setVip(Boolean vip) {
        this.vip = vip;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
}
