package com.example.demo.pojo;

import jakarta.persistence.*;

@Entity
public class HeardSong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "heard_song_id")
    private Integer id;

    private Integer songid;

    private Integer userid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}
