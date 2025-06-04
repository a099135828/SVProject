package com.example.demo.pojo.dto;

import com.example.demo.pojo.SongTag;

import java.util.List;

public class SongTagDTO {
    private Integer songid;
    private List<Integer> tagid;

    public SongTagDTO(Integer songid, List<Integer> tagid) {
        this.songid = songid;
        this.tagid = tagid;
    }

    public Integer getSongId() {
        return songid;
    }

    public void setSongId(Integer songId) {
        this.songid = songId;
    }

    public List<Integer> getTagid() {
        return tagid;
    }

    public void setTagid(List<Integer> tagid) {
        this.tagid = tagid;
    }


}
