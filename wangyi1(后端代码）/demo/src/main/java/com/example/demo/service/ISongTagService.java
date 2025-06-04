package com.example.demo.service;

import com.example.demo.pojo.SongTag;

import java.util.List;

public interface ISongTagService {
    SongTag addSongTag(SongTag songTag);

    List<SongTag> findSongTag();

    List<SongTag> saveAll(List<SongTag> songTags);

    void deleteSongTag(Integer songid);

    void deleteTag(Integer tagid);
}
