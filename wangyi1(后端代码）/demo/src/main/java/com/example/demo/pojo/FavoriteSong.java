package com.example.demo.pojo;

import jakarta.persistence.*;

@Entity
@Table(name = "favorite_song")
public class FavoriteSong {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "favorite_s_id")
    private Integer id;

    private Integer userid;

    private Integer songid;

    @Column(name = "user_listen_times")
    private Integer listenTimes;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }

    public Integer getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(Integer listenTimes) {
        this.listenTimes = listenTimes;
    }
}
