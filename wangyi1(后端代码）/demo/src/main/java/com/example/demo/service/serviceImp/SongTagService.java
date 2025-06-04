package com.example.demo.service.serviceImp;

import com.example.demo.pojo.SongTag;
import com.example.demo.mapper.SongTagMapper;
import com.example.demo.service.ISongTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongTagService implements ISongTagService {

    @Autowired
    private SongTagMapper songTagMapper;

    public SongTag addSongTag(SongTag songTag) {
        songTagMapper.insert(songTag);
        return songTag;
    }

    public List<SongTag> findSongTag() {
        return songTagMapper.findAll();
    }

    public List<SongTag> saveAll(List<SongTag> songTags) {
        for (SongTag songTag : songTags) {
            songTagMapper.insert(songTag);
        }
        return songTags;
    }

    public void deleteSongTag(Integer songid) {
        songTagMapper.deleteBySongid(songid);
    }

    public void deleteTag(Integer tagid) {
        songTagMapper.deleteByTagid(tagid);
    }
}