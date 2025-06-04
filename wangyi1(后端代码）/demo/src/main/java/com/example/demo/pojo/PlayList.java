package com.example.demo.pojo;

import jakarta.persistence.*;

@Entity
@Table(name = "playlist")
public class PlayList {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer playlistId;

    private Integer userid;

    private Integer songid;

    private String img;

    private String playlistName;

    private Integer collect;

    private Integer share;

    private Integer comment;

    private String listenTimes;

    @Column(name = "is_official")
    private Boolean official;

    public Integer getPlaylistId() {
        return playlistId;
    }

    public void setPlaylistId(Integer playlistId) {
        this.playlistId = playlistId;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPlaylistName() {
        return playlistName;
    }

    public void setPlaylistName(String playlistName) {
        this.playlistName = playlistName;
    }

    public Integer getCollect() {
        return collect;
    }

    public void setCollect(Integer collect) {
        this.collect = collect;
    }

    public Integer getShare() {
        return share;
    }

    public void setShare(Integer share) {
        this.share = share;
    }

    public Integer getComment() {
        return comment;
    }

    public void setComment(Integer comment) {
        this.comment = comment;
    }

    public String getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(String listenTimes) {
        this.listenTimes = listenTimes;
    }

    public Boolean getOfficial() {
        return official;
    }

    public void setOfficial(Boolean official) {
        this.official = official;
    }
}
