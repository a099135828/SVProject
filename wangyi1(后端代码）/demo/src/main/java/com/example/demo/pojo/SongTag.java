package com.example.demo.pojo;

import jakarta.persistence.*;

@Entity
public class SongTag {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="s_t_id")
    private Integer id;

    private Integer songid;

    private Integer tagid;

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

    public Integer getTagid() {
        return tagid;
    }

    public void setTagid(Integer tagid) {
        this.tagid = tagid;
    }
}
